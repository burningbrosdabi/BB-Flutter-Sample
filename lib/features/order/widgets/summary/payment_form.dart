import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:quiver/strings.dart';
import '../../provider/provider.dart';

class PaymentForm extends ConsumerStatefulWidget {
  final String order_id;
  const PaymentForm({
    required this.order_id,
    super.key,
  });

  @override
  ConsumerState<PaymentForm> createState() => PaymentFormState();
}

class PaymentFormState extends ConsumerState<PaymentForm> {
  late final _ViewModel vm;

  PaymentMethod get method => vm.payment_method_notifier.value;
  int get deposit => vm.deposit_notifier.value;

  @override
  void initState() {
    super.initState();
    vm = _ViewModel(ref: ref, order_id: widget.order_id);
  }

  @override
  void dispose() {
    super.dispose();
    vm.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<PaymentMethod>(
        valueListenable: vm.payment_method_notifier,
        builder: (context, method_value, child) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final enum_val in PaymentMethod.values)
                InkWell(
                  onTap: () {
                    vm.payment_method_notifier.value = enum_val;
                  },
                  child: Row(children: [
                    $Radio<PaymentMethod>(
                      groupValue: method_value,
                      value: enum_val,
                      onChanged: (_) {
                        vm.payment_method_notifier.value = enum_val;
                      },
                    ),
                    Text(enum_val.name)
                  ]),
                ),
              Offstage(
                offstage: method_value != PaymentMethod.COD_AND_BANK_TRANSFER,
                child: Consumer(builder: (context, ref, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Tiền cọc',
                            errorText: ref.watch(valid_payment(widget.order_id))
                                ? null
                                : 'Tiền cọc phải lớn hơn 0đ và bé hơn hoặc bằng ${currencyFormat(ref.watch(total(widget.order_id)))}'),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: vm.input_controller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [ThousandsFormatter()],
                      ),
                      if (ref.watch(valid_payment(widget.order_id)))
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Consumer(builder: (context, ref, _) {
                              return ValueListenableBuilder<int>(
                                  valueListenable: vm.deposit_notifier,
                                  builder: (context, deposit, _) {
                                    final price =
                                        ref.watch(total(widget.order_id));
                                    final remaining = price - deposit;
                                    return Text(
                                        'Còn lại: ${currencyFormat(remaining)}');
                                  });
                            }),
                          ),
                        )
                    ]),
                  );
                }),
              )
            ],
          );
        });
  }
}

class _ViewModel {
  final WidgetRef ref;
  final String order_id;

  late final TextEditingController input_controller;
  late final ValueNotifier<PaymentMethod> payment_method_notifier;
  late final ValueNotifier<int> deposit_notifier;

  void onTextChanged() {
    final price = removeDelimiter(input_controller.text);
    deposit_notifier.value = price;
  }

  void validate() {
    final method = payment_method_notifier.value;
    final _total = ref.read(total(order_id));
    if (method != PaymentMethod.COD_AND_BANK_TRANSFER) {
      ref.read(valid_payment(order_id).notifier).state = true;
      return;
    }

    final deposit = deposit_notifier.value;
    if (deposit <= 0 || _total - deposit < 0) {
      ref.read(valid_payment(order_id).notifier).state = false;
      return;
    }
    ref.read(valid_payment(order_id).notifier).state = true;
  }

  int removeDelimiter(String? text) {
    int next = 0;
    if (isNotBlank(text)) {
      final trimmed = text!.replaceAll(',', '');
      final number = int.tryParse(trimmed);
      next = number ?? 0;
    }
    return next;
  }

  _ViewModel({required this.ref, required this.order_id}) {
    deposit_notifier = ValueNotifier(ref.read(deposit(order_id)))
      ..addListener(validate);
    input_controller = TextEditingController(
        text: currencyFormat(deposit_notifier.value, symbol_included: false));
    input_controller.addListener(onTextChanged);

    payment_method_notifier = ValueNotifier(ref.read(payment_method(order_id)))
      ..addListener(validate);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      validate();
    });
  }

  void dispose() {
    input_controller.removeListener(onTextChanged);
    payment_method_notifier.removeListener(validate);
    deposit_notifier.removeListener(validate);
  }
}
