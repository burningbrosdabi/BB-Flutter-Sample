import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum ShippingType {
  free('Miễn phí'),
  paid('Trả phí');

  final String status;

  const ShippingType(this.status);

  @override
  String toString() {
    return status;
  }
}

class ShippingForm extends ConsumerStatefulWidget {
  const ShippingForm({required this.order_id, super.key});

  final String order_id;

  @override
  ConsumerState<ShippingForm> createState() => _ShippingFormState();
}

class _ShippingFormState extends ConsumerState<ShippingForm>
    with AutomaticKeepAliveClientMixin {
  final FocusNode _focusNode = FocusNode();
  late NumberFormat formatter;
  late final _ViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = _ViewModel(ref: ref, order_id: widget.order_id);
    formatter =
        NumberFormat('#${vm.thousand_delimiter}###${vm.thousand_delimiter}000');
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ValueListenableBuilder<ShippingType>(
        valueListenable: vm.shipping_fee_notifier,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: RawAutocomplete<int>(
              displayStringForOption: (option) {
                return formatter.format(option);
              },
              focusNode: _focusNode,
              textEditingController: vm.text_editing_controller,
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted) {
                return TextFormField(
                  inputFormatters: [ThousandsFormatter()],
                  focusNode: focusNode,
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Phí ship',
                    suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                            right: 16, left: 12, top: 12, bottom: 12),
                        child: Text(
                          'Đ',
                          style: context.textTheme.button,
                        )),
                    suffixIconConstraints: const BoxConstraints(maxWidth: 48),
                  ),
                );
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<int>.empty();
                }
                final number = int.tryParse(textEditingValue.text
                    .replaceAll(vm.thousand_delimiter, ''));
                if (number == null) return [];
                return [1e2, 1e3, 1e4]
                    .map((e) => (e * number).toInt())
                    .toList();
              },
              optionsViewBuilder: (BuildContext context,
                  AutocompleteOnSelected<int> onSelected,
                  Iterable<int> options) {
                return SizedBox.shrink(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: options
                        .map(
                          (option) => Material(
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 12,
                              ),
                              onTap: () => onSelected(option),
                              dense: true,
                              title: Text(formatter.format(option)),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            )),
        builder: (context, value, child) {
          final is_paid = ShippingType.paid == value;
          return Column(
            children: [
              for (final shipping_value in ShippingType.values)
                InkWell(
                  onTap: () {
                    vm.shipping_fee_notifier.value = shipping_value;
                  },
                  child: Row(children: [
                    $Radio<ShippingType>(
                      groupValue: value,
                      value: shipping_value,
                      onChanged: (next) {
                        vm.shipping_fee_notifier.value = shipping_value;
                      },
                    ),
                    Text(shipping_value.toString())
                  ]),
                ),
              Offstage(
                offstage: !is_paid,
                child: child!,
              )
            ],
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}

class _ViewModel {
  _ViewModel({required this.order_id, required this.ref}) {
    final fee = ref.read(shipping_fee(order_id));
    if (fee > 0) {
      shipping_fee_notifier = ValueNotifier(ShippingType.paid);
    } else {
      shipping_fee_notifier = ValueNotifier(ShippingType.free);
    }
    text_editing_controller = TextEditingController(text: fee.toString());
    shipping_fee_notifier.addListener(onValueChanged);
    text_editing_controller.addListener(onTextChanged);
  }

  late final TextEditingController text_editing_controller;

  late final ValueNotifier<ShippingType> shipping_fee_notifier;

  final thousand_delimiter = ',';
  final WidgetRef ref;
  final String order_id;

  void onTextChanged() {
    if (text_editing_controller.text.isEmpty) {
      ref.read(shipping_fee(order_id).notifier).state = 0;
      return;
    }
    final fee = int.tryParse(
        text_editing_controller.text.replaceAll(thousand_delimiter, ''));
    if (fee == null) return;
    ref.read(shipping_fee(order_id).notifier).state = fee;
  }

  void onValueChanged() {
    if (shipping_fee_notifier.value == ShippingType.free)
      text_editing_controller.text = '';
  }

  void dispose() {
    shipping_fee_notifier.removeListener(onValueChanged);
    text_editing_controller.removeListener(onTextChanged);
  }
}
