import 'package:dabi_chat/data/gallery/gallery.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/helper.dart';

class GalleryPhotoRepository extends IRepository {
  GalleryPhotoRepository({required super.ref})
      : super(
          log: Logging('GalleryPhotoRepository'),
        );

  Future<PaginationResponse<GalleryPhoto>> getPhotos(int offset,
      [int? filter]) async {
    final response = await http.get('photos/', queryParameters: {
      'offset': offset,
      if (filter != null) 'category_id': filter,
    });

    final data = PaginationResponse.fromJson(
      response,
      (value) => GalleryPhoto.fromJson(value as Map<String, dynamic>),
    );
    return data;
  }
}

class GalleryCategoryRepository extends IRepository
    with CachingStrategies<List<GalleryCategory>> {
  GalleryCategoryRepository({required super.ref})
      : data_source = GalleryCategoryDataSource(
            ref, 'gallery_category_data_source',
            version: 1),
        super(
          log: Logging('GalleryCategoryRepository'),
        );

  final GalleryCategoryDataSource data_source;

  Future<List<GalleryCategory>> _getAllCategories() async {
    final response = await fetchAll<GalleryCategory>(fetch: _getCategories);
    return response.results as List<GalleryCategory>;
  }

  Future<PaginationResponse<GalleryCategory>> _getCategories(int limit) async {
    final response =
        await http.get('photo-categories/', queryParameters: {'limit': limit});
    return PaginationResponse.fromJson(response,
        (obj) => GalleryCategory.fromJson(obj as Map<String, dynamic>));
  }

  Future<List<GalleryCategory>> getCategories() async {
    return cacheFirst(_getAllCategories);
  }

  @override
  Future<List<GalleryCategory>?> get() {
    return data_source.get();
  }

  @override
  Future<void> save(List<GalleryCategory> value) {
    return data_source.put(value);
  }
}
