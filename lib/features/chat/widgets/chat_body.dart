import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/chat/widgets/input/input.dart';
import 'package:dabi_chat/features/chat/widgets/widgets.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:intl/intl.dart';

import 'custom_message/custom_message.dart';

class ChatBody extends ConsumerWidget {
  final String id;
  const ChatBody(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final receiver = ref.read(chatProvider(id)).receiver;
    return Chat(
      customBottomWidget: ChatInput(
        conversation_id: id,
      ),
      bubbleBuilder: (child,
          {required types.Message message, required bool nextMessageInGroup}) {
        return ChatBubble(
          child: child,
          conversation_id: id,
          message: message,
          nextMessageInGroup: nextMessageInGroup,
          isMine: receiver.id == message.author.id,
        );
      },
      onMessageLongPress: (_, message) {
        showModal(
          context: context,
          builder: (_) => ModalBottomSheetAction(
            message: message,
            conversation_id: id,
            parent_context: context,
          ),
        );
      },
      onAttachmentPressed: () async {},
      theme: themeBuilder(context),
      dateFormat: DateFormat('dd.MM.yyyy'),
      dateHeaderThreshold: const Duration(days: 1).inMilliseconds,
      disableImageGallery: true,
      isTextMessageTextSelectable: false,
      usePreviewData: true,
      isAttachmentUploading: false,
      showUserAvatars: false,
      messages: ref.watch(messengerProvider(id)).values.toList(),
      onSendPressed: (message) {},
      user: receiver,
      onEndReached: ref.read(chatProvider(id)).onPagingFetch,
      imageMessageBuilder: (data, {required messageWidth}) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: $Image(data.uri),
        );
      },
      // textMessageBuilder: (message,
      //     {required messageWidth, required showName}) {
      //   final error = message.metadata != null
      //       ? MessageMetadata.fromJson(message.metadata!).error
      //       : null;

      //   return Column(
      //     children: [
      //       TextMessage(
      //           emojiEnlargementBehavior: EmojiEnlargementBehavior.multi,
      //           hideBackgroundOnEmojiMessages: true,
      //           isTextMessageTextSelectable: false,
      //           message: message,
      //           previewTapOptions: const PreviewTapOptions(
      //               openOnImageTap: false, openOnTitleTap: false),
      //           showName: showName,
      //           usePreviewData: false),
      //       if (error?.description?.isNotEmpty ?? false)
      //         Text(
      //           error!.description!,
      //           style: Theme.of(context)
      //               .textTheme
      //               .caption!
      //               .copyWith(color: Theme.of(context).errorColor),
      //         ),
      //     ],
      //   );
      // },
      customMessageBuilder: (message, {required messageWidth}) {
        return CustomMessageBuilder(
          conversation_id: id,
          message: message,
          messageWidth: messageWidth,
        );
      },
    );
  }
}
