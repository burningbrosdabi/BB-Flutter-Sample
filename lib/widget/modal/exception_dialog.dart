import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

class ExceptionDialog extends StatelessWidget {
  final $Exception exception;
  final List<Widget>? actions;
  final bool autoImplyReportButton;
  const ExceptionDialog({
    required this.exception,
    this.actions,
    this.autoImplyReportButton = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.center,
      icon: Icon(
        Dabicons.small_warning,
        color: context.theme.errorColor,
      ),
      title: Text(
        exception.meaning.title,
        style: context.textTheme.labelLarge,
      ),
      content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exception.meaning.description ?? '',
              textAlign: TextAlign.center,
            ),
          ]),
      actions: [
        if (autoImplyReportButton)
          TextButton(
              onPressed: () {
                exportLogs();
              },
              child: const Text('Báo cáo')),
        if (actions != null) ...actions!
      ],
    );
  }
}
