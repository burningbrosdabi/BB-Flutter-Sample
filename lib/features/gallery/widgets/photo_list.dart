import 'package:dabi_chat/features/gallery/gallery.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/image/video_thumbnail.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PhotoList extends ConsumerWidget {
  const PhotoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final categoriesAsyncValue = ref.watch(categoriesFutureProvider);
    return Material(
      child: categoriesAsyncValue.when(
        data: (data) {
          final selectedCtg = ref.watch(categorySelectionProvider);
          return PagedGridView<int, GalleryPhoto>(
            key: ValueKey('photo_list_${selectedCtg?.id}'),
            pagingController: ref.watch(photoListProvider).pagingController,
            builderDelegate:
                PagedChildBuilderDelegate(itemBuilder: (context, item, index) {
              late Widget child;
              switch (item.type) {
                case GalleryType.image:
                  child = $Image(item.photo_url);
                  break;
                case GalleryType.video:
                  child = VideoThumbnail(url: item.photo_url);
                  break;
              }
              return Consumer(
                builder: (context, ref, _) {
                  final keys = ref.watch(photoIdsMapProvider).keys.toList();
                  final index = keys.indexOf(item.id) + 1;
                  return OverlaySelection(
                    indicatorBuilder: (context) {
                      return Container(
                        alignment: Alignment.center,
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Text(
                          '$index',
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      );
                    },
                    alignment: Alignment.topRight,
                    onChanged: (bool value) {
                      ref.read(photoIdsMapProvider.notifier).select(item);
                    },
                    initialValue:
                        ref.read(photoIdsMapProvider).containsKey(item.id),
                    child: child,
                  );
                },
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
          );
        },
        error: (error, stackTrace) => EmptyView.error(error: error),
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
