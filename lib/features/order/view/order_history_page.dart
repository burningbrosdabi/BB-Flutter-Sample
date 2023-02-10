import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key, required this.conversation_id})
      : super(key: key);

  final String conversation_id;

  static RouteSetting<String> route(String conversation_id) {
    final path = '/orders/$conversation_id';
    return RouteSetting(
      path,
      shouldBeAuth: true,
      params: conversation_id,
      toPathUrl: () {
        return path;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lịch sử đặt hàng'),
        ),
        body: OrderList(
          conversation_id: conversation_id,
        ));
  }
}
