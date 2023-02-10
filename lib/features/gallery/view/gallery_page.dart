import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/gallery/gallery.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  /// {@macro gallery_page}
  final String conversation_id;
  const GalleryPage({required this.conversation_id, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Consumer(
            builder: (context, ref, child) {
              return TextButton(
                style: context.theme.textButtonTheme.style!.copyWith(
                  textStyle:
                      MaterialStateProperty.all(context.textTheme.labelLarge),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      ref.watch(categorySelectionProvider) == null
                          ? ''
                          : ref.watch(categorySelectionProvider)!.title,
                      style: context.textTheme.labelMedium,
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      CupertinoIcons.chevron_down,
                      size: 16,
                    ),
                  ],
                ),
                onPressed: () {
                  showModal(
                      context: context,
                      builder: (context) {
                        return const CategoryFilter();
                      });
                },
              );
            },
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Dabicons.close,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ]),
      body: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Expanded(
              child: PhotoList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Consumer(builder: (context, ref, child) {
                final photos = ref
                    .watch(photoIdsMapProvider)
                    .values
                    .map((e) => e.photo_url)
                    .toList();
                if (photos.isEmpty) return const Offstage();
                return ElevatedButton(
                  child: Text("GỬI ${photos.length.toString()} ẢNH"),
                  onPressed: () {
                    ref
                        .read(postmanProvider(conversation_id))
                        .sendAttachmentMessage(
                          urls: photos,
                        );
                    Navigator.of(context).pop();
                  },
                );
              }),
            )
          ]),
        ),
      ),
    );
  }
}
