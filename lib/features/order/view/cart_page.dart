import 'package:dabi_chat/features/order/view/cart_option_page.dart';
import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../provider/cart_provider.dart';
import '../widgets/widgets.dart';
import 'cart_page_mode.dart';
import 'product_search_delegate.dart';

class CartPage extends ConsumerWidget {
  final String order_id;

  const CartPage({required this.order_id, super.key});

  static const route = '/cart';

  @override
  Widget build(context, ref) {
    ref.watch(cart_provider(order_id));
    final cart = ref.watch(cart_provider(order_id));

    void onSelectProduct(Product item) {
      final option = CartOption(product: item, note: null);

      Navigator.of(context).pushNamed(
        CartOptionPage.route,
        arguments: CartOptionPageArgs(
          order_id: order_id,
          option: option,
          mode: const CartPageMode.create(),
        ),
      );
    }

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          floatingActionButton:
              ValueListenableBuilder<PagingState<int, dynamic>>(
            valueListenable:
                ref.watch(list_controller_provider).pagingController,
            builder: (context, value, child) {
              if (value.status != PagingStatus.completed)
                return const Offstage();
              return FloatingActionButton(
                child: const Icon(Icons.search),
                onPressed: () async {
                  final product = await showSearch<Product>(
                      context: context, delegate: ProductSearch(ref: ref));
                  if (product == null) return;
                  onSelectProduct(product);
                },
              );
            },
          ),
          appBar: AppBar(
            title: const Text('Các sản phẩm đang bán'),
          ),
          body: CustomScrollView(
            controller: ModalScrollController.of(context),
            slivers: [
              SliverToBoxAdapter(
                  child: Cart(
                editable: true,
                order_id: order_id,
              )),
              ProductList.sliver(
                builderDelegate: PagedChildBuilderDelegate(itemBuilder:
                    (BuildContext context, Product item, int index) {
                  return ProductItemTile(
                    onTap: () {
                      onSelectProduct(item);
                    },
                    padding: EdgeInsets.only(
                      top: 12.0,
                      bottom: 12.0,
                      right: 16 - $Radio.padding_inset,
                      left: 16,
                    ),
                    item: item,
                  );
                }),
              )
            ],
          ),
          bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: ElevatedButton(
                onPressed: cart.isNotEmpty
                    ? () {
                        Navigator.pop(context);
                      }
                    : null,
                child: const Text('TIẾP TỤC'),
              )),
        ),
      ),
    );
  }
}
