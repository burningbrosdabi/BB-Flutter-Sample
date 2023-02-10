import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductSharingList extends ConsumerWidget {
  const ProductSharingList({super.key});

  @override
  Widget build(context, ref) {
    return ProductList(
      builderDelegate: PagedChildBuilderDelegate(
        firstPageErrorIndicatorBuilder: (context) {
          return EmptyView.error(
              error:
                  ref.watch(list_controller_provider).pagingController.error);
        },
        itemBuilder: (BuildContext context, item, int index) {
          return ProductItemTile(
            onTap: () => ref.read(selected_product.notifier).state = item,
            padding: EdgeInsets.only(
              top: 12.0,
              bottom: 12.0,
              left: 16 - $Radio.padding_inset,
              right: 16,
            ),
            item: item,
            leading: $Radio<Product>(
              value: item,
              onChanged: (value) {
                ref.read(selected_product.notifier).state = value;
              },
              groupValue: ref.watch(selected_product),
            ),
          );
        },
      ),
    );
  }
}
