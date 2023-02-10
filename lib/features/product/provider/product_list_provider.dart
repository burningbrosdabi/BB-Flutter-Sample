import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:riverpod/riverpod.dart';

import 'product_pagination_params.dart';

final selected_product = StateProvider<Product?>((ref) => null);

final list_controller_provider =
    Provider<$PagingController<Product, ProductPaginationParams>>((ref) {
  final controller = $PagingController<Product, ProductPaginationParams>(
      keyExtractor: (value) => value.id,
      fetch: (offset, [params]) {
        return ref.watch(product_paging_future(
                ProductPaginationParams(q: params?.q, offset: offset))
            .future);
      });
  return controller;
});

final product_paging_future =
    FutureProvider.family<PaginationResponse<Product>, ProductPaginationParams>(
        (ref, params) => ProductRepository(ref: ref)
            .getProducts(offset: params.offset, q: params.q));
