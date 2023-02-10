import 'dart:async';
import 'package:collection/collection.dart';
import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/reply/provider/reply_map_provider.dart';
import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/repository/chat/messenger/messenger_repository.dart';
import 'package:dabi_chat/repository/reply/reply_repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/services/messenger/messenger_service.dart';
import 'package:rxdart/rxdart.dart';

class ReplyProvider with ConversationObservation {
  final Ref ref;

  @override
  late final String conversation_id;
  final log = Logging('ReplyProvider');

  final _stream_map = <String, BehaviorSubject<Message>>{};
  final ReplyRepository reply_repo;

  ReplyProvider({
    required this.ref,
    required this.conversation_id,
  }) : reply_repo = ReplyRepository(ref: ref);

  void _addToStream(String id, Message message) {
    if (!_stream_map.containsKey(id)) return;

    assert(_stream_map.containsKey(message.id));
    // ignore: close_sinks
    final stream = _stream_map[message.id]!;

    if (!stream.isActive) return;
    stream.add(message);
  }

  Iterable<String> getActiveStreamIds() => _stream_map.keys.where((id) {
        return _stream_map[id]!.isActive;
      });

  UnmodifiableMapView<String, Stream<Message>> get stream_map =>
      UnmodifiableMapView(_stream_map);

  Message? captured(String ids) {
    return _stream_map[ids]?.valueOrNull;
  }

  void find() async {
    ref.read(reply_map(conversation_id)).whenData((id_map) async {
      final ids = id_map.values.toList();
      if (!ref.read(messengerProvider(conversation_id).notifier).mounted)
        return;
      // initialize stream
      for (final id in ids) {
        _stream_map[id] = BehaviorSubject<Message>();
      }

      final cached_replies = await reply_repo.get();
      final cache_message = <String, Message>{};

      for (final id in ids) {
        late Message message;
        // find from current list message
        if (ref.read(messengerProvider(conversation_id)).containsKey(id)) {
          message = ref.read(messengerProvider(conversation_id))[id]!;
        } //find from cache
        else if (cached_replies?.containsKey(id) ?? false) {
          message = cached_replies![id]!;
        } else
          continue;
        _addToStream(id, message);
        cache_message[id] = message;
      }

      await reply_repo.append(cache_message);
      //find from api
      final repo = ref.read(messengerRepoProvider(conversation_id));
      if (getActiveStreamIds().isEmpty) return;
      if (repo is FBMessengerRepository) {
        await getFBRepliesMessage();
      } else if (repo is IGMessengerRepository) {
        await getIGRepliesMessage();
      }

      // clean up
      final notfound_ids = getActiveStreamIds();
      for (final id in notfound_ids) {
        _addToStream(
            id,
            TextMessage(
              author: ref.read(chatProvider(conversation_id)).sender,
              text: 'Tin nhắn đã bị xóa hoặc không hỗ trợ hiển thị',
              id: id,
            ));
      }
    });
  }

  Future<void> getFBRepliesMessage() async {
    log.info(subTag: 'getFBRepliesMessage');
    final List<Future<MapEntry<String, Message>?>> futures = [];
    for (final id in getActiveStreamIds()) {
      final completer = Completer<MapEntry<String, Message>?>();
      ref
          .read(messengerRepoProvider(conversation_id))
          .getMessage(id)
          .then((value) {
        _addToStream(id, value);
        completer.complete(MapEntry(id, value));
      }).catchError((error, stack) {
        log.error(subTag: 'getFBRepliesMessage', message: error.toString());
        _stream_map[id]?.addError(error);
        completer.complete(null);
      });
      futures.add(completer.future);
    }
    final messages = await Future.wait(futures)
        .then((value) => value.whereNotNull().toList());

    await reply_repo.append(Map.fromEntries(messages));
  }

  Future<void> getIGRepliesMessage() async {
    var paging = ref.read(messengerProvider(conversation_id).notifier).paging;

    bool didAllStreamActive() =>
        _stream_map.values.any((stream) => !stream.isActive);

    final List<MapEntry<String, Message>> entries = [];

    while (paging != null && didAllStreamActive()) {
      final conversations =
          await ref.read(chatProvider(conversation_id)).onPagingFetch();
      paging = ref.read(messengerProvider(conversation_id).notifier).paging;
      if (conversations == null) continue;
      final messages = conversations.map((e) => e.toMessage()).toList();
      for (final message in messages) {
        _addToStream(
          message.id,
          message,
        );
        entries.add(MapEntry(message.id, message));
      }
    }
    await reply_repo.append(Map.fromEntries(entries));
  }

  void dispose() {
    for (final stream in _stream_map.values) {
      stream.close();
    }
  }

  void getReplyMap() async {
    ref
        .read(reply_map(conversation_id).notifier)
        .setState(await AsyncValue.guard(() async {
          final data = await ReplyIdMapRepository(ref: ref)
              .getReplyMapWithCache(conversation_id);
          return data;
        }));
  }

  @override
  void onDeleteMessage(String conversation_id) {}

  @override
  void onRecivedMessages(Message message) {
    if (message.metadata == null) return;
    final metadata = MessageMetadata.fromJson(message.metadata!);
    if (metadata.reply_to == null) return;
    ref
        .read(reply_map(conversation_id).notifier)
        .add(message.id, metadata.reply_to!);
  }
}

final reply_provider =
    Provider.family<ReplyProvider, String>((ref, conversation_id) {
  final provider = ReplyProvider(
    ref: ref,
    conversation_id: conversation_id,
  );

  ref.watch(messengerService).subscribe(provider);

  final unsub = ref.listen<AsyncValue<Map<String, String>>>(
      reply_map(conversation_id), (previous, next) {
    next.whenData((value) => provider.find());
  });

  ref.onDispose(() {
    unsub.close();
    provider.dispose();
    ref.watch(messengerService).unsubscribe(provider);
  });
  return provider;
});

extension BehaviorSubjectExt<T> on BehaviorSubject<T> {
  bool get isActive {
    return !isClosed && !hasValue;
  }
}
