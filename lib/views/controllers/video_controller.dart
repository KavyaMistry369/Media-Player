import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class My_Video_Controller extends ChangeNotifier{

 late VideoPlayerController My_VideoController;
 late ChewieController My_ChewieController;

 List<VideoPlayerController>All_Video=[
   VideoPlayerController.asset("lib/views/assets/videos/1.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/2.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/3.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/4.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/5.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/6.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/7.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/8.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/9.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/10.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/11.mp4"),
   VideoPlayerController.asset("lib/views/assets/videos/12.mp4"),
 ];

 List<ChewieController>All_Chewie=[
  ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/1.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/2.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/3.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/4.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/5.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/6.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/7.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/8.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/9.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/10.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/11.mp4"),),
   ChewieController(videoPlayerController:  VideoPlayerController.asset("lib/views/assets/videos/12.mp4"),),
 ];


 List<String>My_Videos=[
   "lib/views/assets/videos/1.mp4",
   "lib/views/assets/videos/2.mp4",
   "lib/views/assets/videos/3.mp4",
   "lib/views/assets/videos/4.mp4",
   "lib/views/assets/videos/5.mp4",
   "lib/views/assets/videos/6.mp4",
   "lib/views/assets/videos/7.mp4",
   "lib/views/assets/videos/8.mp4",
   "lib/views/assets/videos/9.mp4",
   "lib/views/assets/videos/10.mp4",
   "lib/views/assets/videos/11.mp4",
   "lib/views/assets/videos/12.mp4",
 ];

 My_Video_Controller(){
   init0();
 }

 init0(){
   My_VideoController=VideoPlayerController.asset("${My_Videos[0]}")..initialize().then((value) {
     All_Chewie[0]=ChewieController(videoPlayerController:All_Video[0],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${My_Videos[1]}")..initialize().then((value) {
     All_Chewie[1]=ChewieController(videoPlayerController: All_Video[1],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[2]}")..initialize().then((value) {
     All_Chewie[2]=ChewieController(videoPlayerController:All_Video[2],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[3]}")..initialize().then((value) {
     All_Chewie[3]=ChewieController(videoPlayerController: All_Video[3],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[4]}")..initialize().then((value) {
     All_Chewie[4]=ChewieController(videoPlayerController: All_Video[4],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[5]}")..initialize().then((value) {
     All_Chewie[5]=ChewieController(videoPlayerController:All_Video[5],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[6]}")..initialize().then((value) {
     All_Chewie[6]=ChewieController(videoPlayerController: All_Video[6],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[7]}")..initialize().then((value) {
     All_Chewie[7]=ChewieController(videoPlayerController: All_Video[7],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[8]}")..initialize().then((value) {
     All_Chewie[8]=ChewieController(videoPlayerController: All_Video[8],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[9]}")..initialize().then((value) {
     All_Chewie[9]=ChewieController(videoPlayerController: All_Video[9],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[10]}")..initialize().then((value) {
     All_Chewie[10]=ChewieController(videoPlayerController: All_Video[10],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
   My_VideoController=VideoPlayerController.asset("${All_Video[11]}")..initialize().then((value) {
     All_Chewie[11]=ChewieController(videoPlayerController: All_Video[11],
       aspectRatio: My_VideoController.value.aspectRatio,
       autoPlay: false,
     );
     notifyListeners();
   });
 }

}