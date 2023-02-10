import 'package:dabi_chat/features/product/product.dart';
import 'package:flutter/material.dart';
import '../provider/cart_provider.dart';

class CartItem extends ConsumerWidget {
  final String uid;
  final String order_id;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final VoidCallback? onRemove;

  const CartItem({
    required this.uid,
    required this.order_id,
    this.onTap,
    this.onRemove,
    EdgeInsetsGeometry? padding,
    super.key,
  }) : padding =
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12);

  @override
  Widget build(context, ref) {
    final option = ref.watch(cart_provider(order_id).notifier).get(uid);
    return ProductItemTile(
      option: option.note,
      onTap: onTap,
      onRemove: onRemove,
      padding: padding,
      is_promo: option.is_free,
      item: option.product,
      trailing: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Text('SL: ${option.quantity.toString()}'),
      ),
    );
  }
}
