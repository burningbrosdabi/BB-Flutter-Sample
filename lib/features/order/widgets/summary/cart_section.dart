import 'package:dabi_chat/utils/context.dart';
import 'package:flutter/material.dart';

import '../../provider/provider.dart';
import '../../view/cart_page.dart';
import '../cart.dart';
import 'chevron_right_line.dart';
import 'summary_section_title.dart';

class CartSection extends ConsumerWidget {
  const CartSection({required this.order_id, Key? key}) : super(key: key);
  final String order_id;

  @override
  Widget build(context, ref) {
    final empty_cart =
        ref.watch(cart_provider(order_id).notifier).displayedOption.isEmpty;
    return InkWell(
      onTap: empty_cart
          ? () {
              Navigator.of(context).pushNamed(CartPage.route);
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const SummarySectionTitle(title: 'Sản phẩm'),
                const Spacer(),
                if (!empty_cart) ...[
                  SizedBox(
                    height: 32,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          foregroundColor: context.theme.primaryColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(CartPage.route);
                        },
                        child: const Text('Thêm sản phẩm')),
                  ),
                  const SizedBox(width: 8),
                ]
              ],
            ),
            if (!empty_cart)
              Cart(
                order_id: order_id,
                editable: true,
              )
            else
              const ChevronRightLine(text: 'Thêm sản phẩm')
          ],
        ),
      ),
    );
  }
}
