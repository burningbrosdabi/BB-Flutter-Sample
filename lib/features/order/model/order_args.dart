import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_args.freezed.dart';

@freezed
class OrderArgs with _$OrderArgs {
  const factory OrderArgs(
      {required String conversation_id, required String order_id}) = _OrderArgs;

  const OrderArgs._();

  String get key => '${conversation_id}_$order_id';
}
