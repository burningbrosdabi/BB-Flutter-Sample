import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/gallery/gallery_repository.dart';
import 'package:dabi_chat/widget/infinite_list/infinite_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'gallery_category.dart';

final photoListProvider =
    Provider.autoDispose<$PagingController<GalleryPhoto, int>>(
  (ref) {
    final controller = $PagingController<GalleryPhoto, int>(
      keyExtractor: (value) => value.id,
      fetch: GalleryPhotoRepository(ref: ref).getPhotos,
      initialFilter: ref.watch(categorySelectionProvider)?.id,
    );
    final unlisten =
        ref.listen<GalleryCategory?>(categorySelectionProvider, (_, next) {
      controller.updateFilter(next!.id);
    });
    ref.onDispose(() {
      unlisten.close();
    });
    return controller;
  },
);

class PhotoIdsMap extends StateNotifier<Map<int, GalleryPhoto>> {
  PhotoIdsMap() : super({});

  void select(GalleryPhoto photo) {
    final next = {...state};
    if (next.containsKey(photo.id)) {
      next.remove(photo.id);
    } else {
      next[photo.id] = photo;
    }
    state = next;
  }
}

final photoIdsMapProvider =
    StateNotifierProvider<PhotoIdsMap, Map<int, GalleryPhoto>>(
        (ref) => PhotoIdsMap());
