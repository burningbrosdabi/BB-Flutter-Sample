import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

class ChevronRightLine extends StatelessWidget {
  const ChevronRightLine({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text),
              ],
            ),
          ),
          const Icon(
            Dabicons.small_arrow_right,
            size: 12,
            color: component_gray,
          )
        ],
      ),
    );
  }
}
