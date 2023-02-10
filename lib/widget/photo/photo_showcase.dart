import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoShowcase extends StatelessWidget {
  final List<PhotoShowcaseItem> items;
  final PageController pageController;

  PhotoShowcase({
    required this.items,
    required int index,
    Key? key,
  })  : pageController = PageController(initialPage: index),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
        backgroundColor: Colors.black,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.clear),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          backgroundDownload(items[pageController.page!.ceil()].url).then((_) {
            ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                const SnackBar(content: Text('✅ Tải ảnh thành công')));
          });
        },
        child: const Icon(CupertinoIcons.cloud_download),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(bottom: kToolbarHeight),
          child: PhotoViewGallery.builder(
            scrollPhysics: const ClampingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(
                  items[index].url,
                ),
                initialScale: PhotoViewComputedScale.contained,
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 4.1,
                heroAttributes: PhotoViewHeroAttributes(tag: items[index].id),
              );
            },
            itemCount: items.length,

            backgroundDecoration: const BoxDecoration(color: Colors.black),
            pageController: pageController,
            // onPageChanged: onPageChanged,
          ),
        ),
      ),
    );
  }
}

class PhotoShowcaseItem {
  final String url;
  final String id;

  PhotoShowcaseItem({required this.url, required this.id});
}
