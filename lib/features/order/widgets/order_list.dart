import 'package:dabi_chat/features/order/model/order_args.dart';
import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/features/product/widgets/product_item_tile.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:loader_overlay/loader_overlay.dart';

class OrderList extends ConsumerWidget {
  const OrderList({required this.conversation_id, Key? key}) : super(key: key);

  final String conversation_id;

  @override
  Widget build(context, ref) {
    const topPadding = EdgeInsets.only(top: 12);
    return PagedListView<int, Order>.separated(
      pagingController:
          ref.watch(order_list_provider(conversation_id)).pagingController,
      builderDelegate:
          PagedChildBuilderDelegate(itemBuilder: (context, item, int index) {
        return InkWell(
          onTap: () async {
            try {
              context.loaderOverlay.show();
              final args = OrderArgs(
                conversation_id: conversation_id,
                order_id: item.id,
              );
              await ref.read(order_manager(args)).preSaveDraftForUpdate(item);
              context.loaderOverlay.hide();
              final should_refresh = await ref.read(modal_presentation).show(
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return OrderPage(args: args, mode: Mode.update);
                  });
              if (should_refresh) {
                await ref
                    .read(order_list_provider(args.conversation_id))
                    .refresh();
              }
            } catch (e) {
              context.loaderOverlay.hide();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: Column(
              children: [
                Row(children: [
                  if (item.created != null)
                    Text(
                      item.created!.dd_MM_yyyy,
                      style: context.textTheme.bodySmall!
                          .copyWith(color: component_gray),
                    ),
                  const Spacer(),
                  Text(item.status.toString(),
                      style: context.textTheme.bodyMedium!
                          .copyWith(color: context.theme.errorColor)),
                ]),
                for (final order in item.order_details)
                  Padding(
                    padding: topPadding,
                    child: ProductItemTile(
                      option: order.note,
                      item: order.product,
                      is_promo: order.is_free,
                      onTap: () {},
                      trailing: Text('SL: ${order.quantity}'),
                    ),
                  ),
                FeeTile(
                  title: 'Tổng tiền hàng',
                  fee: item.subtotal,
                  padding: topPadding,
                ),
                FeeTile(
                  title: 'Phí vận chuyển',
                  fee: item.shipping_fee,
                  padding: topPadding,
                ),
                Padding(
                  padding: topPadding,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                        text: TextSpan(
                            style: context.textTheme.bodySmall,
                            children: [
                          const TextSpan(text: 'Tổng tiền '),
                          TextSpan(
                              text: currencyFormat(item.total_price),
                              style: context.textTheme.labelMedium)
                        ])),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
