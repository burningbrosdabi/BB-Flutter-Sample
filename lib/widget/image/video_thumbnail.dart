import 'package:dabi_chat/features/video/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '\$image.dart';

class VideoThumbnail extends ConsumerStatefulWidget {
  final String url;
  const VideoThumbnail({required this.url, super.key});

  @override
  ConsumerState<VideoThumbnail> createState() => _VideoThumbnailState();
}

class _VideoThumbnailState extends ConsumerState<VideoThumbnail> {
  late Future<Uint8List?> future;

  @override
  void initState() {
    super.initState();
    future = ref.read(video_thumb_provider.notifier).getThumbnail(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data == null) {
              return const $Image(null);
            }
            return Image.memory(
              snapshot.data!,
              fit: BoxFit.cover,
            );
          }
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return const $Image(null);
        });
  }
}
