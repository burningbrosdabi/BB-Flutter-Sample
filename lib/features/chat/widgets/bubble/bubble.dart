import 'package:bubble/bubble.dart';
import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/chat/widgets/reply/reply_message.dart';
import 'package:dabi_chat/features/reply/provider/provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:intl/intl.dart';

import 'bubble_builder.dart';

class ChatBubble extends ConsumerStatefulWidget {
  final types.Message message;
  final bool nextMessageInGroup;
  final bool isMine;
  final Widget child;
  final String conversation_id;

  const ChatBubble({
    required this.child,
    required this.message,
    required this.nextMessageInGroup,
    required this.isMine,
    required this.conversation_id,
    Key? key,
  }) : super(key: key);

  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends ConsumerState<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    final formater = DateFormat('HH:mm:ss');

    return LayoutBuilder(builder: (context, contrainst) {
      final biggest = contrainst.biggest;
      final builder = widget.isMine
          ? MineMessageBubbleBuilder(
              nextMessageInGroup: widget.nextMessageInGroup)
          : AnotherMessageBubbleBuilder(
              nextMessageInGroup: widget.nextMessageInGroup);

      final metadata = widget.message.metadata != null
          ? MessageMetadata.fromJson(widget.message.metadata!)
          : null;
      // final reply_to = metadata?.reply_to;
      // final memorized = ref.watch(memoizedReply).value;

      final exception = metadata?.error;

      return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: biggest.width * 3 / 4),
        child: Column(
          crossAxisAlignment: builder.layoutCrossAxisAlignment,
          children: [
            ref.watch(reply_map(widget.conversation_id)).maybeWhen<Widget>(
              data: (value) {
                if (value.containsKey(widget.message.id))
                  return ReplyMessage(
                    reply_to: value[widget.message.id]!,
                    builder: builder,
                    conversation_id: widget.conversation_id,
                  );
                return const Offstage();
              },
              orElse: () {
                return const Offstage();
              },
            ),
            widget.message.type != types.MessageType.text
                ? widget.child
                : $Bubble(
                    child: widget.child,
                    builder: builder,
                  ),
            if (exception != null &&
                exception.error_type != ExceptionType.unowned_thread)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  exception.title,
                  textAlign: TextAlign.right,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Theme.of(context).errorColor),
                ),
              ),
            if (ref.watch(inspect_mode)) ...[
              Text(
                widget.message.id.characters
                    .getRange(
                        widget.message.id.length - 11, widget.message.id.length)
                    .string,
                style:
                    context.textTheme.overline!.copyWith(color: component_gray),
              ),
              Text(
                formater.format(DateTime.fromMillisecondsSinceEpoch(
                    widget.message.createdAt!.toInt())),
                style:
                    context.textTheme.overline!.copyWith(color: component_gray),
              )
            ]
          ],
        ),
      );
    });
  }
}

class $Bubble extends StatelessWidget {
  final Widget child;
  final BubbleBuilder builder;

  const $Bubble({
    required this.child,
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bubble(
      padding: const BubbleEdges.all(0),
      elevation: 0,
      radius: const Radius.circular(12),
      nipHeight: 12,
      nipRadius: 0,
      nipWidth: 0.0000005,
      child: child,
      color: builder.backgroundColor,
      nip: builder.nip,
    );
  }
}
