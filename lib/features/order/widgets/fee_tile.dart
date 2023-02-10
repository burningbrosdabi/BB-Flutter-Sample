import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';

class FeeTile extends StatelessWidget {
  const FeeTile(
      {required this.title,
      required this.fee,
      super.key,
      this.padding = const EdgeInsets.symmetric(horizontal: 16.0)});
  final String title;
  final int fee;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Text(title),
          const Spacer(),
          Text(currencyFormat(fee)),
        ],
      ),
    );
  }
}
