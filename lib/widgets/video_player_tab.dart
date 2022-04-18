import 'package:flutter/material.dart';
import 'package:flutter_module_11/widgets/player_tab_content.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerTab extends StatefulWidget {
  const VideoPlayerTab({Key? key}) : super(key: key);

  @override
  State<VideoPlayerTab> createState() => _VideoPlayerTabState();
}

class _VideoPlayerTabState extends State<VideoPlayerTab> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    _initializeVideoPlayerFuture = _controller?.initialize();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return PlayerTabContent(controller: _controller);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
