import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

import 'cart_page_mode.dart';

class CartOptionPageArgs {
  final CartOption option;
  final String order_id;
  final CartPageMode mode;

  CartOptionPageArgs({
    required this.option,
    required this.order_id,
    required this.mode,
  });
}

class CartOptionPage extends ConsumerStatefulWidget {
  static String route = '/cart/option';
  final CartOption option;
  final String conversation_id;
  final CartPageMode mode;

  CartOptionPage(
    CartOptionPageArgs args, {
    super.key,
  })  : option = args.option,
        conversation_id = args.order_id,
        mode = args.mode;

  @override
  ConsumerState<CartOptionPage> createState() => _CartOptionPageState();
}

class _CartOptionPageState extends ConsumerState<CartOptionPage> {
  late final ValueNotifier<int> quantity;
  late final TextEditingController text_editing_controller;

  late CartOption option;

  late bool is_promo;

  @override
  void initState() {
    super.initState();
    option = widget.option.copyWith();
    quantity = ValueNotifier(option.quantity);
    text_editing_controller = TextEditingController(text: option.note);
    is_promo = option.is_free;
  }

  void onSave() {
    option = option.copyWith(
      quantity: quantity.value,
      note: text_editing_controller.text.isEmpty
          ? null
          : text_editing_controller.text,
    );

    widget.mode.when(create: () {
      ref.read(cart_provider(widget.conversation_id).notifier).add(option);
    }, update: () {
      ref.read(cart_provider(widget.conversation_id).notifier).update(option);
    });

    FocusManager.instance.primaryFocus?.unfocus();
    Navigator.of(context).pop();
  }

  void onDelete() {
    ref.read(cart_provider(widget.conversation_id).notifier).remove(option);
    Navigator.of(context).pop();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.mode
            .when(create: () => 'Thêm sản phẩm', update: () => 'Điều chỉnh')),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InputLabel(
            label: 'Số lượng',
            child: ProductItemTile(
                item: option.product,
                trailing: ValueListenableBuilder<int>(
                    valueListenable: quantity,
                    builder: (context, value, child) {
                      return QuantityGroup(
                        min: 1,
                        onLowerThanMin: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  const Text('Bạn có muốn bỏ chọn sản phẩm?'),
                              action: SnackBarAction(
                                  label: 'BỎ CHỌN', onPressed: onDelete),
                            ),
                          );
                        },
                        onAdd: (value) {
                          quantity.value = value;
                        },
                        onSubtract: (value) {
                          quantity.value = value;
                        },
                        quantity: value,
                      );
                    }),
                onTap: () {}),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InputLabel(
              child: TextFormField(
                controller: text_editing_controller,
              ),
              label: 'Ghi chú'),
        ),
        CheckboxListTile(
            activeColor: Colors.black,
            dense: true,
            title: const Text('Áp dụng CTKM'),
            value: option.is_free,
            onChanged: (value) {
              if (value == null) return;
              setState(() {
                option = option.copyWith(is_free: value);
              });
            }),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (widget.mode is UpdateMode)
                TextButton(
                  child: const Text('XÓA'),
                  onPressed: onDelete,
                ),
              TextButton(
                child: Text(
                  widget.mode
                      .when(create: () => 'THÊM', update: () => 'CẬP NHẬT'),
                  style: context.textTheme.button!
                      .copyWith(color: context.theme.primaryColor),
                ),
                onPressed: onSave,
              )
            ],
          ),
        )
      ]),
    );
  }
}
