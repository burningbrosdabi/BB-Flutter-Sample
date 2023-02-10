import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/icon/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

ChatTheme themeBuilder(BuildContext context) {
  return DefaultChatTheme(
    errorIcon: Icon(
      Dabicons.small_warning,
      size: 12,
      color: context.theme.errorColor,
    ),
    inputPadding: const EdgeInsets.symmetric(vertical: 8),
    inputMargin: EdgeInsets.zero,
    inputTextDecoration: const InputDecoration(
      filled: false,
    ),
    messageInsetsHorizontal: 8,
    messageInsetsVertical: 8,
    inputBackgroundColor: Colors.transparent,
    inputContainerDecoration:
        const BoxDecoration(border: Border(top: BorderSide(width: 0.5))),
    inputTextColor: Colors.black,
    dateDividerMargin: const EdgeInsets.only(bottom: 12),
    dateDividerTextStyle: Theme.of(context).textTheme.caption!,
    primaryColor: Colors.black,
    receivedMessageBodyTextStyle: Theme.of(context).textTheme.bodyMedium!,
    sentMessageBodyTextStyle:
        Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
    backgroundColor: Colors.white,
  );
}
