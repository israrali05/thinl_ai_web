import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:project22/provider/event_screen_controller.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late EventScreenProvider _eventScreenProvider;

  @override
  void initState() {
    super.initState();
    _eventScreenProvider = EventScreenProvider();
  }

  @override
  void dispose() {
    _eventScreenProvider.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9, // Replace with your desired aspect ratio
      child: Container(
        color: Colors.black,
        child: _eventScreenProvider.chewieController != null
            ? Chewie(
                controller: _eventScreenProvider.chewieController,
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
