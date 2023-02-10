import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/features/customer/view/customer_form_page.dart';
import 'package:dabi_chat/features/order/view/cart_option_page.dart';
import 'package:dabi_chat/features/order/view/cart_page.dart';
import 'package:dabi_chat/features/order/view/payment_page.dart';
import 'package:dabi_chat/features/order/view/summary_page.dart';
import 'package:flutter/cupertino.dart';

import '../model/order_args.dart';

enum Mode { add, update }

class OrderPage extends ConsumerStatefulWidget {
  final String conversation_id;
  final String order_id;
  final OrderArgs args;
  final Mode mode;

  OrderPage({
    required this.args,
    required this.mode,
    super.key,
  })  : conversation_id = args.conversation_id,
        order_id = args.order_id,
        navigatorKey = ValueKey(args.key);
  final ValueKey navigatorKey;

  @override
  ConsumerState<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends ConsumerState<OrderPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: SummaryPage.route,
      onGenerateRoute: (settings) {
        return CupertinoPageRoute(builder: (context) {
          if (settings.name == CustomerFormPage.route)
            return CustomerFormPage(order_id: widget.order_id);
          if (settings.name == CustomerAddressEditingPage.route)
            return CustomerAddressEditingPage(order_id: widget.order_id);
          if (settings.name == CartPage.route)
            return CartPage(order_id: widget.order_id);
          if (settings.name == CartOptionPage.route) {
            assert(settings.arguments is CartOptionPageArgs);
            return CartOptionPage(
              settings.arguments as CartOptionPageArgs,
            );
          }
          if (settings.name == PaymentPage.route) {
            return PaymentPage(
              order_id: widget.order_id,
            );
          }
          if (settings.name == SummaryPage.route) {
            return SummaryPage(
              args: widget.args,
              mode: widget.mode,
            );
          }
          return const Offstage();
        });
      },
    );
  }
}
