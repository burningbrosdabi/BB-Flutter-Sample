import 'package:dabi_chat/model/model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../provider/provider.dart';
export 'product_share_list.dart';

class ProductList extends ConsumerWidget {
  final PagedChildBuilderDelegate<Product> builderDelegate;
  final ScrollController? scrollController;
  final bool is_sliver;

  const ProductList({
    required this.builderDelegate,
    this.scrollController,
    super.key,
    this.is_sliver = false,
  });

  const ProductList.sliver({
    required PagedChildBuilderDelegate<Product> builderDelegate,
    ScrollController? scrollController,
    Key? key,
  }) : this(
          builderDelegate: builderDelegate,
          scrollController: scrollController,
          key: key,
          is_sliver: true,
        );

  @override
  Widget build(context, ref) {
    if (is_sliver)
      return PagedSliverList(
        pagingController: ref.watch(list_controller_provider).pagingController,
        builderDelegate: builderDelegate,
      );

    return PagedListView<int, Product>(
      padding: EdgeInsets.zero,
      scrollController: scrollController,
      shrinkWrap: true,
      builderDelegate: builderDelegate,
      pagingController: ref.watch(list_controller_provider).pagingController,
    );
  }
}

/**
 * PagedChildBuilderDelegate(
        itemBuilder: (BuildContext context, item, int index) {
          return ProductItemTile(
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
 */
