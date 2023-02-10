import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ModalBottomSheetAction extends ConsumerWidget {
  final Message message;
  final String conversation_id;
  final BuildContext parent_context;

  const ModalBottomSheetAction({
    required this.message,
    required this.conversation_id,
    required this.parent_context,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    final medata = message.metadata != null
        ? MessageMetadata.fromJson(message.metadata!)
        : null;

    final tiles = [
      if (message.type == MessageType.image)
        ListTile(
          onTap: () async {
            try {
              Navigator.of(context).pop();
              final metadata = message.metadata != null
                  ? MessageMetadata.fromJson(message.metadata!)
                  : null;
              late String uri;
              if (metadata is ImageMetadata) {
                uri = metadata.origin_url;
              } else {
                uri = (message as ImageMessage).uri;
              }
              await backgroundDownload(uri);
              ScaffoldMessenger.of(parent_context).showSnackBar(
                  const SnackBar(content: Text('✅ Tải ảnh thành công')));
            } catch (e) {
              ScaffoldMessenger.of(parent_context).showSnackBar(SnackBar(
                  backgroundColor: Theme.of(context).errorColor,
                  content: const Text('Tải ảnh thất bại')));
            }
          },
          title: const Text('Tải ảnh'),
        ),
      if (message.type == MessageType.text)
        ListTile(
          onTap: () {
            Clipboard.setData(
              ClipboardData(text: (message as TextMessage).text),
            );
            Navigator.of(context).pop();
          },
          title: const Text('Sao chép'),
        ),
      if (medata?.error != null)
        ListTile(
          onTap: () {
            ref
                .read(postmanProvider(conversation_id))
                .retrySendMessage(message: message);
            Navigator.of(context).pop();
          },
          title: const Text('Gửi lại'),
        )
    ];
    return ListView(
      shrinkWrap: true,
      children: ListTile.divideTiles(
        tiles: tiles,
        color: Colors.white,
      ).toList(),
    );
  }
}
