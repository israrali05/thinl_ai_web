import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:video_player/video_player.dart';

class EventScreenProvider with ChangeNotifier {
  int _selectedIndex = -1;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  EventScreenProvider() {
    _videoPlayerController =
        VideoPlayerController.asset('assets/video/sample_video.mp4');

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      looping: false,
      allowPlaybackSpeedChanging: false,
      aspectRatio: 16 / 9,
      allowMuting: true,
      placeholder: Container(
        color: Colors.grey,
      ),
      materialProgressColors: ChewieProgressColors(
        playedColor: AppColors.whiteColor.withOpacity(0.8),
        handleColor: AppColors.whiteColor,
        backgroundColor: AppColors.black,
        bufferedColor: AppColors.whiteColor.withOpacity(0.4),
      ),
    );
  }

  ChewieController get chewieController => _chewieController;

  void disposeControllers() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  void togglePlayPause() {
    if (_videoPlayerController.value.isPlaying) {
      _videoPlayerController.pause();
    } else {
      _videoPlayerController.play();
    }
    notifyListeners();
  }
}

class IdeasControllers with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
