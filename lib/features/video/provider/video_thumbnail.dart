import 'dart:async';

import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class VideoThumbProvider
    extends StateNotifier<AsyncValue<Map<String, List<int>>>> {
  final log = Logging('VideoThumbProvider');
  VideoThumbProvider({required this.ref})
      : repo = VideoThumbnailRepository(ref: ref),
        super(const AsyncValue.loading()) {
    init();
  }

  final Ref ref;
  final VideoThumbnailRepository repo;
  final Completer initialize_completer = Completer();

  void init() async {
    log.info(subTag: 'init');
    state = await AsyncValue.guard(() async {
      final cache = await repo.get();
      log.info(subTag: 'init', message: 'empty cache');
      if (cache == null) return {};
      return cache;
    });
    state.when(
      data: (data) {
        initialize_completer.complete();
        log.info(subTag: 'init success');
      },
      error: (error, trace) {
        initialize_completer.completeError(error, trace);
        log.error(subTag: 'init failed', error: error, trace: trace);
      },
      loading: () {},
    );
  }

  Future<Uint8List?> getThumbnail(String url) async {
    try {
      await initialize_completer.future;
      final data = state.value!;
      if (data.containsKey(url)) {
        return Uint8List.fromList(data[url]!);
      }
      final bytes = await VideoThumbnail.thumbnailData(
        video: url,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 320,
      );
      if (bytes == null) {
        return null;
      }
      repo.put(url, bytes);
      state = AsyncValue.data({
        ...data,
        url: bytes,
      });
      return bytes;
    } catch (e, trace) {
      log.error(
          subTag: 'getThumbnail failed', message: url, error: e, trace: trace);
      rethrow;
    }
  }
}

final video_thumb_provider = StateNotifierProvider<VideoThumbProvider,
    AsyncValue<Map<String, List<int>>>>(
  (ref) => VideoThumbProvider(ref: ref),
);
