import 'package:dabi_chat/features/chat/widgets/reply/reply.dart';
import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/widget/image/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as f_chat_ui;
import 'package:quiver/strings.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../provider/provider.dart';
import '../bubble/bubble.dart';
import '../bubble/bubble_builder.dart';

class StoryMessage extends ConsumerWidget {
  final String id;

  final User author;
  final String? url;
  final String? text;
  final String title;

  const StoryMessage({
    required this.id,
    required this.url,
    required this.text,
    required this.title,
    required this.author,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final builder = AnotherMessageBubbleBuilder(nextMessageInGroup: false);
    final contentTypeAsyncVal = ref.watch(storyContentType(url));
    return ConstrainedBox(
      constraints: BoxConstraints.loose(const Size(220, double.infinity)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ReplyContainer(
          padding: builder.innerPadding,
          decoration: builder.replyBoxDecoration,
          child: Column(
              crossAxisAlignment: builder.layoutCrossAxisAlignment,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.black,
                      ),
                ),
                const SizedBox(height: 8),
                contentTypeAsyncVal.when(data: (type) {
                  return StoryMessageBody(
                    url: url,
                    type: type,
                    text: text,
                  );
                }, error: (error, stackTrace) {
                  return const Offstage();
                }, loading: () {
                  return const CupertinoActivityIndicator();
                })
              ]),
        ),
        if (isNotBlank(text))
          $Bubble(
            child: f_chat_ui.TextMessage(
              emojiEnlargementBehavior:
                  f_chat_ui.EmojiEnlargementBehavior.never,
              hideBackgroundOnEmojiMessages: true,
              isTextMessageTextSelectable: false,
              message: TextMessage(id: '', text: text!, author: author),
              usePreviewData: false,
              showName: false,
              previewTapOptions:
                  const f_chat_ui.PreviewTapOptions(openOnImageTap: false),
            ),
            builder: builder,
          ),
      ]),
    );
  }
}

class StoryMessageBody extends StatelessWidget {
  final MediaStoryType type;
  final String? url;
  final String? text;
  const StoryMessageBody({required this.type, this.url, this.text, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (type) {
      case MediaStoryType.video:
        return InkWell(
          onTap: () {
            launchUrl(Uri.parse(url!));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.play_circle_outline),
                SizedBox(width: 4),
                Text('Video'),
              ],
            ),
          ),
        );
      case MediaStoryType.image:
        // return Text('IMAGE');
        return ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(135, 240)),
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: $Image(url),
          ),
        );
      case MediaStoryType.expired:
        return const Text('Tin nhắn đã hết hạn');
      case MediaStoryType.unknown:
        return const Text('unknown');
    }
  }
}
