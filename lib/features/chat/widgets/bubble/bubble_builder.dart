import 'package:bubble/bubble.dart';
import 'package:dabi_chat/model/chat/conversation/message_metadata/custom_message_metadata.dart';
import 'package:dabi_chat/widget/theme/text.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class BubbleBuilder {
  final bool nextMessageInGroup;
  BubbleBuilder({required this.nextMessageInGroup});

  Color get backgroundColor;

  BubbleNip get nip;

  CrossAxisAlignment get layoutCrossAxisAlignment;

  BoxDecoration get replyBoxDecoration;

  EdgeInsetsGeometry get innerPadding;

  Widget buildReplyMessage(types.Message message) {
    late final Widget child;
    switch (message.type) {
      case types.MessageType.custom:
        if ((message as types.CustomMessage).metadata == null) continue DEFAULT;
        final metadata = MessageMetadata.fromJson(message.metadata!);
        if (metadata is! StoryMetadata) continue DEFAULT;

        break;
      case types.MessageType.text:
        child = Text(
          (message as types.TextMessage).text,
          style: text_theme.bodyMedium,
        );
        break;
      case types.MessageType.image:
        child = ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 120),
          child: $Image((message as types.ImageMessage).uri),
        );
        break;
      DEFAULT:
      default:
        child = const Offstage();
    }
    return child;
  }
}

class MineMessageBubbleBuilder extends BubbleBuilder {
  MineMessageBubbleBuilder({required bool nextMessageInGroup})
      : super(nextMessageInGroup: nextMessageInGroup);

  @override
  Color get backgroundColor => primary_color;

  @override
  CrossAxisAlignment get layoutCrossAxisAlignment => CrossAxisAlignment.end;

  @override
  BubbleNip get nip =>
      nextMessageInGroup ? BubbleNip.no : BubbleNip.rightBottom;

  @override
  BoxDecoration get replyBoxDecoration => BoxDecoration(
      color: primary_color.withAlpha(112),
      border: const Border(right: BorderSide(width: 4, color: primary_color)));

  @override
  EdgeInsetsGeometry get innerPadding =>
      const EdgeInsets.only(right: 12, top: 8, bottom: 8);
}

class AnotherMessageBubbleBuilder extends BubbleBuilder {
  AnotherMessageBubbleBuilder({required bool nextMessageInGroup})
      : super(nextMessageInGroup: nextMessageInGroup);

  @override
  Color get backgroundColor => fade_gray;

  @override
  CrossAxisAlignment get layoutCrossAxisAlignment => CrossAxisAlignment.start;

  @override
  BubbleNip get nip => nextMessageInGroup ? BubbleNip.no : BubbleNip.leftBottom;

  @override
  EdgeInsetsGeometry get innerPadding =>
      const EdgeInsets.only(left: 12, top: 8, bottom: 8);

  @override
  BoxDecoration get replyBoxDecoration => const BoxDecoration(
      border: Border(left: BorderSide(width: 4, color: light_gray)));
}
