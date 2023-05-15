import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

import '../model/model.dart';

class VideoPlayerProvider extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;


  void loadvideo(String? videopath)
  {
    videoPlayerController = VideoPlayerController.asset("$videopath");
    videoPlayerController!.initialize();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        allowFullScreen: true,
        autoPlay: true,
        startAt: Duration(seconds: 1),
        fullScreenByDefault: true
    );

  }

  List<VideoItem> videos = [
    VideoItem(name:"Ashram",poster: "assets/images/ashram.jpg",path: "assets/audio/ashram.mp3"),
    VideoItem(name: "Dhamal",poster: "assets/images/dhamal.jpg",path: "assets/audio/dhamal.mp3"),
    VideoItem(name: "Farzi",poster: "assets/images/farzi.jpg",path: "assets/audio/farzi.mp3"),
    VideoItem(name: "Heraferi",poster: "assets/images/heraferi.jpg",path: "assets/audio/heraferi.mp3"),
    VideoItem(name: "KGF",poster: "assets/images/kgf.jpg",path: "assets/audio/kgf.mp3"),
    VideoItem(name: "Mirzapur",poster: "assets/images/mirzapur.jpg",path: "assets/audio/mirzapur.mp3"),
    VideoItem(name: "Pushpa",poster: "assets/images/pushpa.jpg",path: "assets/audio/pushpa.mp3"),
    VideoItem(name: "RRR",poster: "assets/images/rrr.jpg",path: "assets/audio/RRR.mp3"),
  ];
}
