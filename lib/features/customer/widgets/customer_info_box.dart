import 'package:dabi_chat/widget/theme/color.dart';
import 'package:flutter/material.dart';

class CustomerInfoBox extends StatelessWidget {
  const CustomerInfoBox({
    Key? key,
    required this.children,
    required this.onPressEdit,
  }) : super(key: key);

  final List<Widget> children;
  final VoidCallback onPressEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 8, bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: fade_gray),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: children),
    );
  }
}
