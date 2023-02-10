import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';

final shipping_fee = StateProvider.family<int, String>((ref, _) => 0);

final subtotal = Provider.family<int, String>((ref, order_id) {
  final cart = ref.watch(cart_provider(order_id));
  final total = cart.fold<int>(0, (prev, option) {
    if (option.is_delete) {
      return prev;
    }
    final price = option.is_free ? 0 : option.product.price;
    return prev + (price * option.quantity);
  });
  return total;
});

final total = Provider.family<int, String>((ref, order_id) {
  return ref.watch(subtotal(order_id)) + ref.watch(shipping_fee(order_id));
});

final payment_method = StateProvider.family<PaymentMethod, String>(
    (ref, order_id) => PaymentMethod.COD);

final deposit = StateProvider.family<int, String>((ref, order_id) => 0);

final valid_payment = StateProvider.family<bool, String>((ref, order_id) {
  return true;
});

final gift_text = StateProvider.family<String?, String>((ref, _) => null);

final summary_note = StateProvider.family<String?, String>((ref, _) => null);

final gift_repo = Provider((ref) => GiftTextRepository(ref: ref));
