import 'package:collection/collection.dart';
import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/features/video/video.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/chat/messenger/messenger_repository.dart';
import 'package:dabi_chat/utils/context.dart';
import 'package:dabi_chat/widget/image/video_thumbnail.dart';
import 'package:dabi_chat/widget/photo/photo_showcase.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:loader_overlay/loader_overlay.dart';

import 'custom_message.dart';

export './story_message.dart';

class CustomMessageBuilder extends ConsumerWidget {
  final types.Message message;
  final int messageWidth;
  final String conversation_id;
  const CustomMessageBuilder(
      {required this.message,
      required this.conversation_id,
      required this.messageWidth,
      Key? key})
      : super(key: key);

  @override
  Widget build(context, ref) {
    if (message.metadata == null) return const Offstage();
    final metadata = MessageMetadata.fromJson(message.metadata!);
    return metadata.when<Widget>(
      (_, reply_to) => const Offstage(),
      video: (data, _, reply_to) {
        return LayoutBuilder(builder: (context, contrainst) {
          return ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: InkWell(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(const Size.fromHeight(120)),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Stack(fit: StackFit.expand, children: [
                    if (ref.watch(messengerRepoProvider(conversation_id))
                        is FBMessengerRepository)
                      VideoThumbnail(
                        url: data.url,
                      )
                    else
                      Container(
                        color: fade_gray,
                      ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.black.withOpacity(0.3),
                        child: InkWell(
                          onTap: () {
                            ref.read(modal_presentation).show(
                                  context: context,
                                  builder: (_) => VideoPage(url: data.url),
                                );
                          },
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 64,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          );
        });
      },
      image: (origin_url, _, reply_to) => const Offstage(),
      attachments: (attachments, _, reply_to) {
        final photos = attachments.mapIndexed((index, value) {
          return PhotoShowcaseItem(
            url: value.data.url,
            id: '${message.id}-$index',
          );
        }).toList();
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: SizedBox(
            width: messageWidth.toDouble(),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: attachments.length % 2 == 0 ? 2 : 3),
              itemCount: attachments.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PhotoShowcase(
                            items: photos,
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: Hero(
                        tag: photos[index].id,
                        child: Image.network(
                          attachments[index].data.preview_url!,
                          fit: BoxFit.cover,
                        )));
              },
            ),
          ),
        );
      },
      share: (url, is_like_sticker, _, reply_to) {
        final child = $Image(
          url,
          color: Colors.white,
        );
        if (is_like_sticker) {
          return SizedBox.square(dimension: 32, child: child);
        }
        return SizedBox.square(
          dimension: messageWidth.toDouble(),
          child: child,
        );
      },
      story: (url, text, title, _, reply_to) {
        return StoryMessage(
          id: message.id,
          url: url,
          text: text,
          title: title,
          author: message.author,
        );
      },
      owner_request: (MeaningfulException? error, String? reply_to) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Cuộc hội thoại đang được xử lý trên Business Suite.',
              textAlign: TextAlign.end,
              style: context.textTheme.caption!.copyWith(
                  color: context.theme.errorColor, fontWeight: FontWeight.bold),
            ),
            Text(
              'Vui lòng liên hệ admin hoặc bấm vào nút bên dưới để phụ trách cuộc hội thoại này',
              textAlign: TextAlign.end,
              style: context.textTheme.caption!
                  .copyWith(color: context.theme.errorColor),
            ),
            GestureDetector(
              onTap: () async {
                context.loaderOverlay.show();
                ref.refresh(ownership_future(conversation_id));
                final future =
                    ref.read(ownership_future(conversation_id).future);
                future
                    .whenComplete(() => context.loaderOverlay.hide())
                    .then((_) {
                  ref
                      .read(messengerProvider(conversation_id).notifier)
                      .remove(message.id);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Phụ trách',
                  style: context.textTheme.caption!.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
