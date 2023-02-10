import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';

class PaymentPage extends ConsumerStatefulWidget {
  final String order_id;
  const PaymentPage({required this.order_id, super.key});
  static const route = '/payment';

  @override
  ConsumerState<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentPage> {
  final payment_form_key = GlobalKey<PaymentFormState>();

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Phương thức thanh toán'),
        ),
        resizeToAvoidBottomInset: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: SingleChildScrollView(
                    child: PaymentForm(
              key: payment_form_key,
              order_id: widget.order_id,
            ))),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                          'Tổng thanh toán: ${currencyFormat(ref.watch(total(widget.order_id)))}')),
                  const SizedBox(height: 8),
                  Consumer(builder: (context, ref, _) {
                    return ElevatedButton(
                      onPressed: ref.watch(valid_payment(widget.order_id))
                          ? () {
                              ref
                                      .read(payment_method(widget.order_id)
                                          .notifier)
                                      .state =
                                  payment_form_key.currentState!.method;
                              ref
                                      .read(deposit(widget.order_id).notifier)
                                      .state =
                                  payment_form_key.currentState!.deposit;

                              Navigator.of(context).pop();
                            }
                          : null,
                      child: const Text('XÁC NHẬN'),
                    );
                  })
                ],
              ),
            ),
          ],
        ));
  }
}
