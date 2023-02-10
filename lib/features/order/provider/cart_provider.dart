import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:nanoid/nanoid.dart';

class CartProvider extends StateNotifier<List<CartOption>> {
  final String order_id;
  final Ref ref;

  CartProvider({
    required this.order_id,
    required this.ref,
  }) : super([]);

  void add(CartOption option) {
    state.add(option.copyWith(uid: nanoid(10), is_new: true));
    state = [...state];
  }

  void update(CartOption option) {
    final index = state.indexWhere((element) => element.uid == option.uid);
    state[index] = option;
    state = [...state];
  }

  void remove(CartOption option) {
    update(option.copyWith(is_delete: true));
  }

  CartOption get(String uid) {
    return state.firstWhere((element) => element.uid == uid);
  }

  void put(List<CartOption> list) {
    state = [...list];
  }

  List<CartOption> get displayedOption {
    return state.where((element) => !element.is_delete).toList();
  }
}

final cart_provider =
    StateNotifierProvider.family<CartProvider, List<CartOption>, String>(
  (ref, order_id) => CartProvider(
    order_id: order_id,
    ref: ref,
  ),
);
