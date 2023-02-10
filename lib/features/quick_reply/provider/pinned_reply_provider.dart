import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/quick_reply/pinned_quick_reply.dart';

class PinnedReplyProvider extends StateNotifier<Map<String, QuickReply>> {
  PinnedReplyProvider({required this.ref})
      : _repo = PinnedQuickReplyRepository(ref: ref),
        super({});
  late final PinnedQuickReplyRepository _repo;

  Map<String, QuickReply> map = {};

  late Ref ref;

  Future<void> init() async {
    final cached = await _repo.get();
    if (cached != null) {
      state = cached;
    }
  }

  void append(QuickReply item) async {
    await _repo.append({'${item.id}': item});
    state = {
      ...state,
      '${item.id}': item,
    };
  }

  void deleteAt(String id) async {
    _repo.deleteAt(id);
    state.remove(id);
    state = {...state};
  }

  List<QuickReply> asList() => state.values.toList();
}

final pinnedReply =
    StateNotifierProvider<PinnedReplyProvider, Map<String, QuickReply>>(
        (ref) => PinnedReplyProvider(ref: ref));

final pinnedReplyFuture = FutureProvider<void>((ref) {
  return ref.read(pinnedReply.notifier).init();
});
