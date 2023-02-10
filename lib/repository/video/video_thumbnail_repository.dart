import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/data/video/video_thumbnail_data.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:flutter/foundation.dart';

class VideoThumbnailRepository extends IRepository
    with DataSourceMixin<Map<String, dynamic>, Map<String, List<int>>> {
  VideoThumbnailRepository({required super.ref})
      : data_source = VideoThumbnailDataSource(ref: ref),
        super(
          log: Logging('VideoThumbnailRepository'),
        );

  Future<void> put(String key, Uint8List list) async {
    await data_source.put({key: list}, merged: true);
  }

  @override
  DataSource<Map<String, List<int>>> data_source;
}
