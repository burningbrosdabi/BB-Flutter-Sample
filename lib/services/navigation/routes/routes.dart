import 'package:dabi_chat/features/chat/view/chat_page.dart';
import 'package:dabi_chat/features/comment/view/comment_detail_page.dart';
import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/features/home/view/setting_page.dart';
import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/features/redeem/redeem.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/features/auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes.freezed.dart';

@freezed
class $Route with _$$Route {
  factory $Route.home() = _HomeRoute;

  factory $Route.auth() = AuthRoute;

  factory $Route.chat(ChatPageParams params) = ChatRoute;

  factory $Route.redeem() = RedeemRoute;

  factory $Route.setting() = SettingRoute;

  factory $Route.customer(String conversation_id) = CustomerRoute;

  factory $Route.comment(String comment_id) = CommentRoute;

  factory $Route.order(String conversation_id) = OrderRoute;

  factory $Route.product(String conversation_id) = ProductRoute;

  factory $Route.productEdit(String conversation_id) = ProductEditRoute;

  const $Route._();

  RouteSetting get setting => when<RouteSetting>(
        home: HomePage.route,
        auth: AuthPage.route,
        chat: ChatPage.route,
        redeem: RedeemPage.route,
        setting: SettingPage.route,
        customer: CustomerPage.route,
        comment: CommentDetailPage.route,
        order: OrderHistoryPage.route,
        product: ProductSharePage.route,
        productEdit: ProductShareEditPage.route,
      );
}
