import 'package:dabi_chat/features/auth/provider/provider.dart';
import 'package:dabi_chat/repository/repository.dart';

class RedeemProvider {
  RedeemProvider(this.ref);

  final Ref ref;

  Future<void> redeem(String code) async {
    try {
      final repo = UserRepository(ref: ref);
      await repo.redeem(code);
      assert(ref.read(user_provider) != null);
      final next = ref.read(user_provider)!.copyWith(is_verified: true);
      await repo.save(next);
      ref.read(user_provider.notifier).state = next;
    } catch (e) {
      rethrow;
    }
  }
}

final redeem_provider = Provider.autoDispose((ref) => RedeemProvider(ref));
