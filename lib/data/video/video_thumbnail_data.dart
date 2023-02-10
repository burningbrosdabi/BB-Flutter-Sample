import 'package:dabi_chat/data/data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoThumbnailDataSource extends DataSource<Map<String, List<int>>> {
  VideoThumbnailDataSource({required Ref ref})
      : super(
          ref,
          'video_thumbnail',
        );

  @override
  Map<String, List<int>> fromJson(Map<String, dynamic> json) {
    return json.map<String, List<int>>(
        (key, value) => MapEntry(key, List<int>.from(value)));
  }

  @override
  Map<String, dynamic> parseJson(Map<String, List<int>> value) => value;
}
