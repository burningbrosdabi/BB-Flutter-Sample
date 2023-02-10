import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/features/order/view/order_page.dart';
import 'package:dabi_chat/utils/context.dart';
import 'package:dabi_chat/utils/helper.dart';
import 'package:dabi_chat/widget/theme/color.dart';
import 'package:flutter/material.dart';
import '../../provider/provider.dart';

class SubmissionSection extends StatelessWidget {
  const SubmissionSection(
      {Key? key,
      required this.order_id,
      required this.onSubmit,
      required this.mode})
      : super(key: key);
  final String order_id;
  final VoidCallback onSubmit;
  final Mode mode;

  @override
  Widget build(BuildContext context) {
    final button_text = () {
      switch (mode) {
        case Mode.add:
          return 'TẠO ORDER';
        case Mode.update:
          return 'CẬP NHẬT';
      }
    }();
    return Consumer(builder: (context, ref, child) {
      final _total = ref.watch(total(order_id));
      final _deposit = ref.watch(deposit(order_id));
      final has_promo =
          ref.watch(cart_provider(order_id)).any((element) => element.is_free);
      final promo = ref.watch(selected_promo(order_id));
      final missing_recipient_info =
          ref.watch(recipient_provider(order_id))?.missingRecipientInfo ?? true;
      final is_empty_Cart = ref.read(cart_provider(order_id)).isEmpty;

      final List<String> errors = [
        if (missing_recipient_info) 'Chưa có thông tin người nhận',
        if (is_empty_Cart) 'Chưa lựa chọn sản phẩm',
        if (promo == null && has_promo) 'Chưa chọn CTKM',
        if (_total < _deposit) 'Tiền đặt cọc đang lớn hơn tổng thanh toán',
      ];
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text.rich(
                TextSpan(style: context.textTheme.bodySmall, children: [
              TextSpan(
                  text: 'Tổng thanh toán ',
                  style: context.textTheme.bodySmall!
                      .copyWith(color: component_gray)),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Text(
                  currencyFormat(_total),
                  style: context.textTheme.bodyLarge!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ),
            ])),
          ),
          if (errors.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final error in errors)
                  Text(
                    error,
                    style: context.textTheme.caption!
                        .copyWith(color: context.theme.errorColor),
                  )
              ],
            ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: errors.isEmpty ? onSubmit : null,
            child: Text(button_text),
          )
        ],
      );
    });
  }
}
