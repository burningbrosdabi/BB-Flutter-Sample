import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/navigation/provider/provider.dart';
import 'package:dabi_chat/services/navigation/routes/routes.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/button/button.dart';
import 'package:dabi_chat/widget/search/app_search_delegate.dart';
import 'package:flutter/material.dart';
import '../product.dart';

class ProductSearchDelegate extends AppSearchDelegate<Product> {
  ProductSearchDelegate({required this.data, required this.conversation_id});

  final List<Product> data;
  final String conversation_id;

  List<Product> queryData() {
    if (query.length <= 2) return [];
    return data.where((product) {
      return matchSearch(product.short_name, query);
    }).toList();
  }

  Widget build(BuildContext context) {
    final data = queryData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView(
            children: [
              for (final item in data)
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    return ProductItemTile(
                      onTap: () =>
                          ref.read(selected_product.notifier).state = item,
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
                )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
          child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return ElevatedButton(
                onPressed: ref.watch(selected_product) == null
                    ? null
                    : () {
                        ref
                            .read(navigatorProvider)
                            .push($Route.productEdit(conversation_id));
                      },
                child: const Text('CHỌN'),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return build(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return build(context);
  }
}
