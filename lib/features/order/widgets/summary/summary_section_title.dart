import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';

class SummarySectionTitle extends StatelessWidget {
  final String title;
  const SummarySectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 4),
      child: Text(
        title,
        style: context.textTheme.labelMedium,
      ),
    );
  }
}
