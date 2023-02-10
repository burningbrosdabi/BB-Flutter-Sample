import 'package:dabi_chat/features/reply/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import '../bubble/bubble_builder.dart';
import 'reply_container.dart';

class ReplyMessage extends ConsumerWidget {
  final String reply_to;
  final BubbleBuilder builder;
  final String conversation_id;

  const ReplyMessage({
    required this.reply_to,
    required this.builder,
    required this.conversation_id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return StreamBuilder<types.Message?>(
        initialData:
            ref.watch(reply_provider(conversation_id)).captured(reply_to),
        stream: ref.watch(reply_provider(conversation_id)).stream_map[reply_to],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ReplyContainer(
              padding: builder.innerPadding,
              decoration: builder.replyBoxDecoration,
              child: builder.buildReplyMessage(snapshot.data!),
            );
          }
          if (snapshot.hasError) {
            return ReplyContainer(
                padding: builder.innerPadding,
                decoration: builder.replyBoxDecoration,
                child: Column(
                  children: [
                    TextButton(
                      child: Text('Tin nhắn quá cũ hoặc không hỗ trợ hiển thị.',
                          style: Theme.of(context).textTheme.caption),
                      onPressed: () {},
                    ),
                  ],
                ));
          }
          return ReplyContainer(
            padding: builder.innerPadding,
            decoration: builder.replyBoxDecoration,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoActivityIndicator(),
            ),
          );
        });
  }
}
