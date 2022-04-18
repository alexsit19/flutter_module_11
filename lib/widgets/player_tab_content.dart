import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayerTabContent extends StatelessWidget {
  final VideoPlayerController? controller;
  const PlayerTabContent({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 5,
          child: AspectRatio(
            aspectRatio: controller?.value.aspectRatio ?? 1,
            child: VideoPlayer(controller!),
          ),
        ),
        Flexible(
          flex: 1,
          child: VideoProgressIndicator(
            controller!,
            allowScrubbing: true,
            colors: const VideoProgressColors(
                backgroundColor: Colors.red,
                bufferedColor: Colors.lightBlue,
                playedColor: Colors.blueAccent),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller?.play();
                  },
                ),
                IconButton(
                  onPressed: () {
                    controller?.pause();
                  },
                  icon: const Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
