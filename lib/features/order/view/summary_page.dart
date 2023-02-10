import 'dart:async';

import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/order/order.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../model/order_args.dart';
import 'order_submission_factory.dart';

part 'summary_page.vm.dart';

class SummaryPage extends ConsumerStatefulWidget {
  const SummaryPage({
    required this.args,
    required this.mode,
    super.key,
  });

  static const route = '/summary';
  final OrderArgs args;
  final Mode mode;

  @override
  ConsumerState<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends ConsumerState<SummaryPage> {
  late _ViewModel vm;

  String get order_id => widget.args.order_id;

  @override
  void initState() {
    super.initState();
    vm = _ViewModel(
      args: widget.args,
      ref: ref,
      mode: widget.mode,
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(modalSlideInAnimDuration);
      vm.bindingOrder();
    });
  }

  @override
  void deactivate() {
    super.deactivate();
    vm.deactivate();
  }

  @override
  Widget build(context) {
    return KeyboardDismissOnTap(
      child: Container(
        color: Colors.white,
        child: SafeArea(
            child: ValueListenableBuilder<AsyncValue<void>>(
          valueListenable: vm.bindingOrderAsync,
          builder: (context, asyncValue, child) {
            return asyncValue.maybeWhen(
                loading: () => const Material(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                orElse: () {
                  return Scaffold(
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      title: const Text('Thông tin đơn hàng'),
                      actions: [
                        IconButton(
                            onPressed: () {
                              ref.read(modal_presentation).hide();
                            },
                            icon: const Icon(Dabicons.close))
                      ],
                    ),
                    body: ListView(
                      padding: const EdgeInsets.only(top: 12),
                      controller: ModalScrollController.of(context),
                      children: [
                        RecipientSection(order_id: order_id),
                        const SizedBox(height: 12),
                        CartSection(order_id: order_id),
                        const SizedBox(height: 12),
                        const SummarySectionTitle(title: 'Phí ship'),
                        ShippingForm(order_id: order_id),
                        const SizedBox(height: 12),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(PaymentPage.route);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SummarySectionTitle(
                                      title: 'Phương thức thanh toán'),
                                  PaymentTile(order_id: order_id),
                                ]),
                          ),
                        ),
                        const SizedBox(height: 12),
                        if (ref
                            .watch(cart_provider(order_id))
                            .any((element) => element.is_free)) ...[
                          const SummarySectionTitle(
                              title: 'Chương trình khuyến mãi'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: PromoDropdown(order_id: order_id),
                          ),
                        ],
                        const SizedBox(height: 12),
                        const SummarySectionTitle(title: 'Quà tặng'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: GiftInput(
                            order_id: order_id,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const SummarySectionTitle(title: 'Ghi chú'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            initialValue: ref.read(summary_note(order_id)),
                            onChanged: (text) {
                              ref.read(summary_note(order_id).notifier).state =
                                  text;
                            },
                            maxLines: null,
                            minLines: 1,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Consumer(
                          builder: (context, ref, child) {
                            final fee = ref.watch(shipping_fee(order_id));
                            return FeeTile(title: 'Phí vận chuyển', fee: fee);
                          },
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            final sub = ref.watch(subtotal(order_id));
                            return FeeTile(title: 'Tổng tiền hàng', fee: sub);
                          },
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            final _deposit = ref.watch(deposit(order_id));
                            return FeeTile(title: 'Đặt cọc', fee: _deposit);
                          },
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                    bottomNavigationBar: Container(
                      decoration: const BoxDecoration(
                          border: Border(top: BorderSide(color: fade_gray))),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          child: SubmissionSection(
                            order_id: order_id,
                            onSubmit: vm.onSubmit,
                            mode: widget.mode,
                          )),
                    ),
                  );
                });
          },
        )),
      ),
    );
  }
}
