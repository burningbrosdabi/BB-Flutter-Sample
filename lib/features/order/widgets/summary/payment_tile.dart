import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../provider/provider.dart';
import 'chevron_right_line.dart';

class PaymentTile extends ConsumerWidget {
  final String order_id;

  const PaymentTile({required this.order_id, super.key});

  @override
  Widget build(context, ref) {
    final method = ref.watch(payment_method(order_id));
    return ChevronRightLine(
      text: method.name +
          (method == PaymentMethod.COD_AND_BANK_TRANSFER
              ? ': ${currencyFormat(ref.watch(deposit(order_id)))}'
              : ''),
    );
  }
}
