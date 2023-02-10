import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/features/order/view/cart_page_mode.dart';
import 'package:dabi_chat/model/order/order.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/theme/color.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Cart extends ConsumerStatefulWidget {
  final String order_id;
  final bool editable;

  const Cart({
    required this.order_id,
    this.editable = true,
    super.key,
  });

  @override
  ConsumerState<Cart> createState() => _CartState();
}

class _CartState extends ConsumerState<Cart> {
  final _expandableCtrl = ExpandableController(initialExpanded: false);

  void onSelect(BuildContext context, CartOption option) {
    if (!widget.editable) return;
    Navigator.of(context).pushNamed(
      CartOptionPage.route,
      arguments: CartOptionPageArgs(
          order_id: widget.order_id,
          option: option,
          mode: const CartPageMode.update()),
    );
  }

  @override
  Widget build(context) {
    final options =
        ref.watch(cart_provider(widget.order_id).notifier).displayedOption;

    if (options.isEmpty) return const Offstage();
    final first = options.first;
    final items = options.skip(1).take(options.length - 1).toList();
    void onRemove(CartOption option) {
      ref.read(cart_provider(widget.order_id).notifier).remove(option);
    }

    return ExpandablePanel(
      controller: _expandableCtrl,
      theme: const ExpandableThemeData(
        hasIcon: false,
        tapHeaderToExpand: false,
      ),
      header: CartItem(
        onTap: () => onSelect(context, first),
        order_id: widget.order_id,
        uid: first.uid,
        onRemove: () => onRemove(first),
      ),
      expanded: items.isEmpty
          ? const Offstage()
          : Column(
              children: [
                for (final option in items)
                  CartItem(
                    onRemove: () => onRemove(option),
                    onTap: () => onSelect(context, option),
                    order_id: widget.order_id,
                    uid: option.uid,
                    padding: option == items.last
                        ? const EdgeInsets.only(left: 16, right: 16, top: 12)
                        : null,
                  ),
                DecoratedBox(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: fade_gray),
                    ),
                  ),
                  child: ExpandButton(
                    onTap: _expandableCtrl.toggle,
                    title: 'Ẩn bớt',
                  ),
                ),
              ],
            ),
      collapsed: items.isNotEmpty
          ? DecoratedBox(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: fade_gray))),
              child: ExpandButton(
                onTap: _expandableCtrl.toggle,
                title: 'Hiện ${items.length} sản phẩm',
              ))
          : const Divider(),
    );
  }
}

class ExpandButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const ExpandButton({required this.onTap, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              title,
              style: context.textTheme.labelLarge,
            )
          ],
        ),
      ),
    );
  }
}
