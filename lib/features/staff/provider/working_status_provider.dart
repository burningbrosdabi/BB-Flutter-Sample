import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';

class _WorkingStatusStateNotifier
    extends StateNotifier<AsyncValue<WorkingStatus>> {
  _WorkingStatusStateNotifier({required this.ref})
      : working_repo = WorkingRepository(ref: ref),
        super(const AsyncValue.loading());

  final Ref ref;
  final WorkingRepository working_repo;

  void refresh() {
    reset();
    getStatus();
  }

  void reset() {
    state = const AsyncValue.loading();
  }

  void getStatus() async {
    state = await AsyncValue.guard(() async {
      return working_repo.getStatus();
    });
  }

  void updateStatus(WorkingStatus status) async {
    if (status == state.value) return;
    reset();
    await working_repo.updateStatus(status);
    state = AsyncValue.data(status);
  }
}

final working_status = StateNotifierProvider<_WorkingStatusStateNotifier,
    AsyncValue<WorkingStatus>>(
  (ref) {
    final provider = _WorkingStatusStateNotifier(ref: ref);
    final unsub = ref.listen<User?>(user_provider, (previous, next) {
      if (next == null) {
        provider.reset();
      } else {
        provider.getStatus();
      }
    });
    ref.onDispose(() {
      unsub.close();
    });
    return provider;
  },
);
