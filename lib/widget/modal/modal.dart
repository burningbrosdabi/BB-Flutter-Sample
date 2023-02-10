import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
export 'exception_dialog.dart';

const modalSlideInAnimDuration = Duration(milliseconds: 220);

final modal_presentation_context = StateProvider<BuildContext?>((ref) => null);

class ModalPresentation {
  final Ref ref;

  ModalPresentation(this.ref);

  void hide<V>([V? value]) {
    final context = ref.read(modal_presentation_context);
    if (context == null) return;
    return Navigator.of(context).pop(value);
  }

  Future<T?> show<T>(
      {required BuildContext context,
      required WidgetBuilder builder,
      bool enableDrag = true}) {
    ref.read(modal_presentation_context.notifier).state = context;
    return CupertinoScaffold.showCupertinoModalBottomSheet<T>(
      enableDrag: enableDrag,
      useRootNavigator: true,
      context: context,
      backgroundColor: context.theme.backgroundColor,
      builder: (context) {
        return builder(context);
      },
      duration: modalSlideInAnimDuration,
      animationCurve: Curves.easeIn,
    ).whenComplete(
        () => ref.read(modal_presentation_context.notifier).state = null);
  }
}

final modal_presentation = Provider((ref) => ModalPresentation(ref));

Future<T?> showModal<T>(
    {required BuildContext context, required WidgetBuilder builder}) {
  return showModalBottomSheet(
    clipBehavior: Clip.hardEdge,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SafeArea(top: false, child: builder(context)),
      );
    },
  );
}
