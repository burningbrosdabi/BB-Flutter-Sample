import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dio/dio.dart';

final storyContentType =
    FutureProvider.family<MediaStoryType, String?>((ref, url) async {
  try {
    if (url?.isEmpty ?? true) return MediaStoryType.expired;
    final dio = Dio();
    final response = await dio.head(url!);
    final header = response.headers.value(Headers.contentTypeHeader);
    if (header!.contains('video')) return MediaStoryType.video;
    if (header.contains('image')) return MediaStoryType.image;
    return MediaStoryType.expired;
  } catch (e) {
    return MediaStoryType.expired;
  }
});
