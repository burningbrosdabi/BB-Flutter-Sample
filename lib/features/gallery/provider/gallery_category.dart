import 'package:dabi_chat/features/gallery/gallery.dart';
import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/gallery/gallery_repository.dart';

final categoriesFutureProvider =
    FutureProvider<List<GalleryCategory>>((ref) async {
  final categories = await GalleryCategoryRepository(ref: ref).getCategories();

  if (categories.isNotEmpty)
    ref.watch(categorySelectionProvider.notifier).state = categories.first;

  return categories;
});

final categorySelectionProvider = StateProvider<GalleryCategory?>(
  (ref) => null,
);
