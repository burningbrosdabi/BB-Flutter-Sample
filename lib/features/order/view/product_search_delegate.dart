import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/search/app_search_delegate.dart';
import 'package:flutter/material.dart';

class ProductSearch extends AppSearchDelegate<Product> {
  final WidgetRef ref;

  ProductSearch({
    required this.ref,
  });

  List<Product> queryData() {
    if (query.length <= 2) return [];
    final data =
        ref.read(list_controller_provider).pagingController.itemList ?? [];
    return data.where((product) {
      return matchSearch(product.short_name, query);
    }).toList();
  }

  Widget build() {
    final data = queryData();
    return ListView.separated(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return ProductItemTile(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          item: item,
          onTap: () {
            Navigator.of(context).pop(item);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return build();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return build();
  }
}
