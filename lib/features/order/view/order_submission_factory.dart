import 'package:collection/collection.dart';
import 'package:dabi_chat/features/chat/provider/postman/postman_provider.dart';
import 'package:dabi_chat/repository/order/order_repository.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:quiver/core.dart';

import '../../../model/model.dart';
import '../../customer/provider/provider.dart';
import '../provider/provider.dart';

abstract class OrderSubmissionFactory<P> {
  OrderSubmissionFactory({
    required this.order_repo,
    required this.ref,
    required this.order_id,
  });

  final OrderRepository order_repo;
  final WidgetRef ref;
  final String order_id;

  Future<void> submit();

  String prepareMessage(OrderSubmitDto dto) {
    final _promo = ref.read(selected_promo(order_id));
    final non_promo_opts = <CartOption>[];
    final promo_opts = <CartOption>[];

    for (final option in dto.order_details) {
      final cloned = option.copyWith();
      if (!option.is_free) {
        non_promo_opts.add(cloned);
      } else {
        promo_opts.add(cloned);
      }
    }

    String note(CartOption option) => Optional.fromNullable(option.note)
        .transform((value) => ' ($value)')
        .or('');

    return [
      'Bạn xác nhận lại giúp Eyeiyagi thông tin đơn hàng ạ:',
      for (final option in non_promo_opts)
        '- ${option.product.short_name}${note(option)} x ${option.quantity}: ${currencyFormat(
          option.product.price * option.quantity,
          symbol_included: false,
        )}',
      '- Ship: ${currencyFormat(
        ref.read(shipping_fee(order_id)),
        symbol_included: false,
      )}',
      '',
      if (_promo != null && non_promo_opts.isNotEmpty)
        [
          'CTKM: ${_promo.title}',
          for (final option in promo_opts)
            '- ${option.product.short_name}${note(option)} x ${option.quantity}',
          ''
        ].join('\n'),
      '=> Tổng giá trị đơn hàng: ${currencyFormat(ref.read(total(order_id)))}',
      '',
      if (ref.read(gift_text(order_id)) != null)
        'Quà tặng: ${ref.read(gift_text(order_id))}\n',
      'Thông tin nhận hàng:',
      '- Tên: ${dto.recipient_name}',
      '- Sđt: ${dto.recipient_phone}',
      '- Địa chỉ: ${dto.recipient_address}',
      if (dto.payment_method == PaymentMethod.COD_AND_BANK_TRANSFER)
        '- Pttt: CK ${currencyFormat(
          dto.bank_transfer_amount!,
          symbol_included: false,
        )} - COD ${currencyFormat(
          dto.cod_amount!,
          symbol_included: false,
        )}'
      else
        '- Pttt: ${dto.payment_method.name}'
    ].join('\n');
  }

  OrderSubmitDto genOrderSubmitDto() {
    final recipient = ref.read(recipient_provider(order_id))!;
    final _shipping_fee = ref.read(shipping_fee(order_id));
    final _payment_method = ref.read(payment_method(order_id));
    final _cart = ref.read(cart_provider(order_id).notifier).displayedOption;
    final _deposit = ref.read(deposit(order_id));
    final _total = ref.read(total(order_id));
    final _gift = ref.read(gift_text(order_id));
    final _promo = ref.read(selected_promo(order_id));
    final _note = ref.read(summary_note(order_id));

    var payload = OrderSubmitDto(
      customer: recipient.pk,
      recipient_phone: recipient.phone_number,
      recipient_name: recipient.contact_information,
      recipient_address: recipient.recipient_information,
      shipping_fee: _shipping_fee,
      order_details: _cart.toList(),
      payment_method: _payment_method,
      promotion: _promo?.id,
      gift: _gift,
      note: _note,
    );
    if (_payment_method == PaymentMethod.COD_AND_BANK_TRANSFER) {
      payload = payload.copyWith(
        bank_transfer_amount: _deposit,
        cod_amount: _total - _deposit,
      );
    }
    return payload;
  }
}

class OrderCreation extends OrderSubmissionFactory<OrderSubmitDto> {
  OrderCreation(
      {required super.order_repo,
      required super.ref,
      required super.order_id,
      required this.conversation_id});

  final String conversation_id;

  @override
  Future<void> submit() async {
    final payload = genOrderSubmitDto();
    await order_repo.submit(payload: payload);
    final message = prepareMessage(payload);
    ref
        .read(postmanProvider(conversation_id))
        .sendTextMessage(message: message);
  }
}

class OrderUpdate extends OrderSubmissionFactory<OrderPartialDto> {
  OrderUpdate(
      {required super.order_repo,
      required super.ref,
      required super.order_id,
      required this.conversation_id,
      required this.draft});

  final OrderDraft draft;
  final String conversation_id;

  V? _compare<V>(V? current, V? next) {
    return current == next ? null : next;
  }

  OrderPartialDto genPayload() {
    final recipient =
        _compare(draft.recipient, ref.read(recipient_provider(order_id))!);

    final _deposit = ref.read(deposit(order_id));
    final _total = ref.read(total(order_id));

    return OrderPartialDto(
        recipient_phone: recipient?.phone_number,
        recipient_name: recipient?.contact_information,
        recipient_address: recipient?.recipient_information,
        shipping_fee: _compare(
          draft.shipping_fee,
          ref.read(shipping_fee(order_id)),
        ),
        payment_method: _compare(
          draft.payment_method,
          ref.read(payment_method(order_id)),
        ),
        bank_transfer_amount: _compare(
          draft.bank_transfer_amount,
          _deposit,
        ),
        cod_amount: _compare(
          draft.cod_amount,
          _total - _deposit,
        ),
        gift: _compare(
          draft.gift,
          ref.read(gift_text(order_id)),
        ),
        promotion: _compare(
          draft.promotion?.id,
          ref.read(selected_promo(order_id))?.id,
        ),
        note: _compare(
          draft.note,
          ref.read(summary_note(order_id)),
        ),
        order_details: compareCart(
          draft.order_details,
          ref.read(cart_provider(order_id)),
        ));
  }

  @override
  Future<void> submit() async {
    final payload = genPayload();
    if (payload.isEmpty) return;
    await order_repo.update(payload: payload, order_id: order_id);
    final orderSubmit = genOrderSubmitDto();
    final message = prepareMessage(orderSubmit);
    ref
        .read(postmanProvider(conversation_id))
        .sendTextMessage(message: message);
  }

  List<CartOption>? compareCart(
      List<CartOption> current, List<CartOption> next) {
    return const ListEquality<CartOption>().equals(current, next) ? null : next;
  }
}
