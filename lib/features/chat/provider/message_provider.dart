import 'package:dabi_chat/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class MessengerNotifier extends StateNotifier<Map<String, types.Message>> {
  MessengerNotifier() : super({});

  String? _paging;

  String? get paging => _paging;

  void put(List<types.Message> messages, [String? paging]) {
    _paging = paging;
    state = {
      for (final message in messages) message.id: message,
    };
  }

  void update(types.Message message, {String? old_id}) {
    if (old_id == null || old_id == message.id) {
      if (!state.containsKey(message.id)) return;
      state[message.id] = message;
      state = {...state};
    } else {
      if (!state.containsKey(old_id)) return;
      final index = state.keys.toList().indexOf(old_id);
      if (index < 0) return;
      final keys = state.keys.toList();
      final values = state.values.toList();
      values[index] = message;
      keys[index] = message.id;
      state = Map.fromIterables(keys, values);
    }
  }

  void append(Messenger messenger) {
    _paging = messenger.paging?.next;

    state = {
      ...state,
      for (final messenger in messenger.data)
        messenger.id: messenger.toMessage(),
    };
  }

  void push(types.Message message) {
    if (state.containsKey(message.id)) {
      state.remove(message.id);
    }
    state = {
      message.id: message,
      ...state,
    };
  }

  void pushAll(List<types.Message> messages) {
    final Map<String, types.Message> new_state = {...state};

    for (final message in messages) {
      if (state.containsKey(message.id)) new_state.remove(message.id);
    }

    state = {
      for (final message in messages) message.id: message,
      ...new_state,
    };
  }

  void shift(List<types.Message> messages) {
    state = {
      for (final message in messages) message.id: message,
      ...state,
    };
  }

  void updateAll(Map<String, types.Message> update) {
    for (final entry in update.entries) {
      state[entry.key] = entry.value;
    }
    state = {...state};
  }

  types.Message? remove(String key) {
    if (!state.containsKey(key)) return null;
    final message = state.remove(key);
    state = {...state};
    return message;
  }

  void removeWhere(bool Function(String key, types.Message value) test) {
    state.removeWhere(test);
    state = {...state};
  }

  types.Message? getMessage(String id) {
    if (!state.containsKey(id)) return null;
    return state[id];
  }

  void appendMesasges(List<types.Message> messages) {
    state = {
      ...state,
      for (final messasge in messages) messasge.id: messasge,
    };
  }

  bool contain(String id) => state.containsKey(id);
}

final messengerProvider = StateNotifierProvider.family<MessengerNotifier,
    Map<String, types.Message>, String>((ref, id) => MessengerNotifier());
