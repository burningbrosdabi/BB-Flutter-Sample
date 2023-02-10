import 'package:dabi_chat/features/customer/provider/customer_provider.dart';
import 'package:dabi_chat/features/order/model/order_args.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'provider.dart';

class OrderManager {
  OrderManager({
    required OrderArgs args,
    required this.ref,
  })  : order_id = args.order_id,
        _order_repo = ref.read(order_repository(args));

  final String order_id;
  final Ref ref;
  final OrderRepository _order_repo;

  Future<void> savingDraft() async {
    final draft = OrderDraft(
        shipping_fee: ref.read(shipping_fee(order_id)),
        payment_method: ref.read(payment_method(order_id)),
        order_details: ref.read(cart_provider(order_id)),
        bank_transfer_amount: ref.read(deposit(order_id)),
        gift: ref.read(gift_text(order_id)),
        promotion: ref.read(selected_promo(order_id)),
        note: ref.read(summary_note(order_id)),
        recipient: ref.read(recipient_provider(order_id)));
    await _order_repo.saveDraft(draft);
  }

  Future<OrderDraft?> getDraft() async {
    return _order_repo.getDraft();
  }

  Future<void> bindDraft() async {
    final draft = await getDraft();
    if (draft == null) return;

    ref.read(shipping_fee(order_id).notifier).state = draft.shipping_fee;
    ref.read(payment_method(order_id).notifier).state = draft.payment_method;
    ref.read(cart_provider(order_id).notifier).put(draft.order_details);
    ref.read(deposit(order_id).notifier).state = draft.bank_transfer_amount;
    ref.read(gift_text(order_id).notifier).state = draft.gift;
    ref.read(selected_promo(order_id).notifier).state = draft.promotion;
    ref.read(summary_note(order_id).notifier).state = draft.note;
    ref.read(recipient_provider(order_id).notifier).state = draft.recipient;
  }

  void invalidate() {
    ref.invalidate(recipient_provider(order_id));
    ref.invalidate(shipping_fee(order_id));
    ref.invalidate(payment_method(order_id));
    ref.invalidate(cart_provider(order_id));
    ref.invalidate(deposit(order_id));
    ref.invalidate(total(order_id));
    ref.invalidate(gift_text(order_id));
    ref.invalidate(selected_promo(order_id));
    ref.invalidate(summary_note(order_id));
  }

  Future<void> removeDraft() => _order_repo.removeDraft();

  Future<void> preSaveDraftForUpdate(Order order) async {
    final draft = OrderDraft.fromOrder(order);
    await _order_repo.saveDraft(draft);
  }

  Future<void> preSaveDraft(OrderDraft draft) async {
    await _order_repo.saveDraft(draft);
  }
}

final order_repository = Provider.family<OrderRepository, OrderArgs>(
    (ref, args) => OrderRepository(ref: ref, args: args));

final order_manager = Provider.family<OrderManager, OrderArgs>((ref, args) {
  final provider = OrderManager(args: args, ref: ref);
  ref.onDispose(() {
    provider.removeDraft();
  });
  return provider;
});
