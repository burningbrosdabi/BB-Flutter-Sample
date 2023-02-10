import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';

class GalleryCategoryDataSource extends DataSourceList<GalleryCategory> {
  GalleryCategoryDataSource(super.ref, super.name, {super.version});

  @override
  GalleryCategory itemFromJson(dynamic json) => GalleryCategory.fromJson(json);

  @override
  Map<String, dynamic> itemToJson(GalleryCategory value) => value.toJson();

  @override
  String primaryKeyExtractor(GalleryCategory value) => '${value.id}';
}
