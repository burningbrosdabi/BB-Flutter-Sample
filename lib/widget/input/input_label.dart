import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget {
  final Widget child;
  final String label;
  const InputLabel({required this.child, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.labelMedium,
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
