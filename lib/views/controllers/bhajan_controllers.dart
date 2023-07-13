import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class My_Bhajan_Controller extends ChangeNotifier{


  bool isGrid=true;
  int index=0;

  List Bhajans=[
    "lib/views/assets/bhajan/Hv.mp3",
    "lib/views/assets/bhajan/H.mp3",
    "lib/views/assets/bhajan/K.mp3",
    "lib/views/assets/bhajan/Ka.mp3",
    "lib/views/assets/bhajan/M.mp3",
    "lib/views/assets/bhajan/N.mp3",
    "lib/views/assets/bhajan/R.mp3",
    "lib/views/assets/bhajan/S.mp3",
    "lib/views/assets/bhajan/SR.mp3",
    "lib/views/assets/bhajan/TH.mp3",
    "lib/views/assets/bhajan/V.mp3",
    "lib/views/assets/bhajan/vak.mp3",
  ];

  List Bhajan_Name=[
    "Manojavam Marutatulya Vegam ",
    "Shree Hanuman Chalisa ",
    "Achyutam Keshavam ",
    "Mahakali mantra",
    "Aigiri Nandini",
    "UGRAM VEERAM",
    "Raghupathi Raghava Rajaram",
    "Shiv Tandav Stotram",
    "Shri Ram Stuti ",
    "Theme of HANUMAN",
    "Karmanye Vadhikaraste",
    "Vakratunda Mahakaya",
  ];


  List Bhajan_Photos=[
    "lib/views/assets/images/Bhajan_Images/B1.png",
    "lib/views/assets/images/Bhajan_Images/B13.png",
    "lib/views/assets/images/Bhajan_Images/B2.png",
    "lib/views/assets/images/Bhajan_Images/B3.png",
    "lib/views/assets/images/Bhajan_Images/B9.png",
    "lib/views/assets/images/Bhajan_Images/B4.png",
    "lib/views/assets/images/Bhajan_Images/B11.png",
    "lib/views/assets/images/Bhajan_Images/B12.png",
    "lib/views/assets/images/Bhajan_Images/B10.png",
    "lib/views/assets/images/Bhajan_Images/B8.png",
    "lib/views/assets/images/Bhajan_Images/B7.png",
    "lib/views/assets/images/Bhajan_Images/B6.png",
  ];

  AssetsAudioPlayer My_Audio_Player=AssetsAudioPlayer();
  Duration totalDuration=Duration.zero;

  My_Bhajan_Controller(){
    init();
  }

  init(){
    print("++++++Called++++++");
    My_Audio_Player.open(Audio(Bhajans[index]),autoStart: false).then((value){
      totalDuration=My_Audio_Player.current.value!.audio.duration;
      print("$index===");
    });
  }

  My_Seek({required int sec}){
    My_Audio_Player.seekBy(Duration(seconds: sec));
    notifyListeners();
  }

  Get_My_Index({required int index}){
    this.index=index;
    init();
    notifyListeners();
  }

  My_Play()async{
    await My_Audio_Player.play();
    notifyListeners();
  }

  My_Pause()async{
    await My_Audio_Player.pause();
    notifyListeners();
  }

  My_Grid(){
    isGrid=!isGrid;
    notifyListeners();
  }

  get isPlaying{
    return My_Audio_Player.isPlaying.value;
  }

  get CurrentPosition{
    return My_Audio_Player.currentPosition;
  }

}