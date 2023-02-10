import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class $LoaderOverlay extends ConsumerWidget {
  final Widget child;
  const $LoaderOverlay({required this.child, super.key});

  @override
  Widget build(context, ref) {
    return LoaderOverlay(
      overlayColor: Colors.black.withOpacity(0.2),
      useDefaultLoading: false,
      overlayWidget: const Center(
        child: SpinkitBox(),
      ),
      child: Builder(builder: (context) {
        return child;
      }),
    );
  }
}
