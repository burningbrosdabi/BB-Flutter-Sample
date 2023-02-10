import 'package:async/async.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  final String url;
  const VideoPage({required this.url, Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late final VideoPlayerController videoPlayerController;

  late final ChewieController chewieController;
  late final CancelableOperation<ChewieController> initialize_op;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(widget.url);
    initialize_op = CancelableOperation.fromFuture(initialize());
  }

  Future<ChewieController> initialize() async {
    try {
      await videoPlayerController.initialize();
      // ignore: join_return_with_assignment
      chewieController = ChewieController(
        materialProgressColors: ChewieProgressColors(),
        allowMuting: true,
        allowFullScreen: false,
        zoomAndPan: false,
        videoPlayerController: videoPlayerController,
        autoPlay: false,
        looping: true,
      );
      return chewieController;
    } catch (e) {
      rethrow;
    }
  }

  @override
  void dispose() {
    initialize_op.cancel();
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Dabicons.close,
                    color: Colors.white,
                  ))
            ]),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: FutureBuilder<ChewieController>(
                future: initialize_op.value,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Chewie(
                    controller: chewieController,
                  );
                }),
          ),
        ));
  }
}

// class VideoView extends StatelessWidget {
//   /// {@macro video_view}
//   const VideoView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const VideoBody();
//   }
// }
