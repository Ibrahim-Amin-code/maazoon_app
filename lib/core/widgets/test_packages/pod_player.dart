// import 'package:pod_player/pod_player.dart';
// import 'package:flutter/material.dart';

// class PlayVideoFromYoutube extends StatefulWidget {
//   const PlayVideoFromYoutube({Key? key}) : super(key: key);

//   @override
//   State<PlayVideoFromYoutube> createState() => _PlayVideoFromYoutubeState();
// }

// class _PlayVideoFromYoutubeState extends State<PlayVideoFromYoutube> {
//     PodPlayerController? controller;

//   @override
//   void initState() {
//     controller = PodPlayerController(
//       playVideoFrom: PlayVideoFrom.youtube('https://www.youtube.com/watch?v=lj7lqynbdUw'),
//     )..initialise();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     controller!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PodVideoPlayer(controller: controller!),
//     );
//   }
// }