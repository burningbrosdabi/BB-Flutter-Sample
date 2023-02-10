import 'package:dabi_chat/features/product/view/product_search_delegate.dart';
import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../provider/product_list_provider.dart';
import '../widgets/widgets.dart';

class ProductListPage extends ConsumerWidget {
  const ProductListPage(this.conversation_id, {super.key});

  final String conversation_id;

  @override
  Widget build(context, ref) {
    return Scaffold(
      floatingActionButton: ValueListenableBuilder<PagingState<int, dynamic>>(
        valueListenable: ref.watch(list_controller_provider).pagingController,
        builder: (BuildContext context, value, Widget? child) {
          final isLoading = value.status != PagingStatus.completed;
          return FloatingActionButton(
            backgroundColor: isLoading ? component_gray : Colors.black,
            child: const Icon(Icons.search),
            onPressed: isLoading
                ? null
                : () {
                    final data = ref
                        .read(list_controller_provider)
                        .pagingController
                        .itemList;
                    assert(data != null);
                    showSearch(
                        context: context,
                        delegate: ProductSearchDelegate(
                            data: data!, conversation_id: conversation_id));
                  },
          );
        },
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Sản phẩm'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
        child: ElevatedButton(
          onPressed: ref.watch(selected_product) == null
              ? null
              : () {
                  ref
                      .read(navigatorProvider)
                      .push($Route.productEdit(conversation_id));
                },
          child: const Text('CHỌN'),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Expanded(child: ProductSharingList()),
          ],
        ),
      ),
    );
  }
}
