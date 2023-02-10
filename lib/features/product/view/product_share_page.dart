import 'package:dabi_chat/features/product/view/product_share_list_page.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductSharePage extends StatelessWidget {
  static RouteSetting<String> route(String conversation_id) {
    return RouteSetting<String>(
      '/products/$conversation_id',
      shouldBeAuth: true,
      toPathUrl: () {
        return '/products/$conversation_id';
      },
    );
  }

  final String conversation_id;

  const ProductSharePage({required this.conversation_id, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductListPage(conversation_id);
  }
}
