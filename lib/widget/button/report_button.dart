import 'package:flutter/material.dart';
import 'package:flutter_logs/flutter_logs.dart';

class ReportButton extends StatefulWidget {
  final Widget Function(VoidCallback? onPressed)? builder;
  const ReportButton({this.builder, super.key});

  @override
  State<ReportButton> createState() => _ReportButtonState();
}

class _ReportButtonState extends State<ReportButton> {
  bool submited = false;

  void onPressed() {
    FlutterLogs.exportLogs(
      exportType: ExportType.LAST_24_HOURS,
    );
    setState(() {
      submited = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.builder != null) {
      return widget.builder!(
        !submited ? onPressed : null,
      );
    }
    return ElevatedButton(
      onPressed: !submited ? onPressed : null,
      child: const Text('BÁO CÁO'),
    );
  }
}
