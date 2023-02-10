import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/features/reply/provider/provider.dart';

class ReplyMapStateNotifier
    extends StateNotifier<AsyncValue<Map<String, String>>> {
  ReplyMapStateNotifier() : super(const AsyncValue.loading());

  void add(String source, String reply_to) {
    if (state.value == null) {
      state = AsyncValue.data({source: reply_to});
      return;
    }
    state = AsyncValue.data({
      ...state.value!,
      source: reply_to,
    });
  }

  void setState(AsyncValue<Map<String, String>> value) {
    state = value;
  }
}

final reply_map = StateNotifierProvider.family<ReplyMapStateNotifier,
    AsyncValue<Map<String, String>>, String>((ref, conversation_id) {
  return ReplyMapStateNotifier();
});
