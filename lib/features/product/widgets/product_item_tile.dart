import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:quiver/strings.dart';

import '../provider/provider.dart';

class ProductItemTile extends ConsumerWidget {
  final Product item;
  final Widget? leading;
  final Widget? trailing;
  final String? option;
  final VoidCallback? onTap;
  final VoidCallback? onRemove;
  final EdgeInsetsGeometry padding;

  final bool is_promo;

  const ProductItemTile(
      {required this.item,
      required this.onTap,
      this.trailing,
      this.leading,
      this.padding = EdgeInsets.zero,
      this.option,
      this.is_promo = false,
      this.onRemove,
      super.key});

  @override
  Widget build(context, ref) {
    return Slidable(
      endActionPane: onRemove != null
          ? ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) => onRemove!(),
                  backgroundColor: context.theme.errorColor,
                  foregroundColor: Colors.white,
                  icon: Dabicons.bin,
                ),
              ],
            )
          : null,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Row(
            children: [
              if (leading != null) leading!,
              SizedBox(
                height: 60,
                width: 48,
                child: $Image(item.photo),
              ),
              const SizedBox(width: 12),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isNotBlank(option))
                    Text(
                      option!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall!.copyWith(
                        color: context.theme.errorColor,
                      ),
                    ),
                  Text(
                    item.short_name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: currencyFormat(item.price),
                          style: context.textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            decoration:
                                is_promo ? TextDecoration.lineThrough : null,
                          ),
                        ),
                        if (is_promo) ...[
                          TextSpan(
                            text: ' 0đ',
                            style: context.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w900,
                              color: context.theme.errorColor,
                            ),
                          ),
                        ]
                      ])),
                    ],
                  )
                ],
              )),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
