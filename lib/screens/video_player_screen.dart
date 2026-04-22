import 'package:flutter/material.dart';
import '../helper/video_player_widget.dart';

class VideoPlayerScreen extends StatelessWidget {
  final String videoPath;
  final String title;
  final bool isAsset;

  const VideoPlayerScreen({
    super.key,
    required this.videoPath,
    required this.title,
    this.isAsset = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: VideoPlayerWidget(
          videoPath: videoPath,
          isAsset: isAsset,
        ),
      ),
    );
  }
}
