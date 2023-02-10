import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/chat/settings/settings.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageMetadataDataSource extends DataSource<PageMetadata> {
  PageMetadataDataSource(Ref ref, String id, AcquisitionSource source)
      : super(ref, 'page_metadata_${id}_$source');

  @override
  PageMetadata fromJson(Map<String, dynamic> json) =>
      PageMetadata.fromJson(json);

  @override
  Map<String, dynamic> parseJson(PageMetadata value) => value.toJson();
}
