import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class My_Audio_Controller extends ChangeNotifier{


 bool isGrid=true;


  List Songs=[
    "lib/views/assets/songs/1.mp3",
    "lib/views/assets/songs/2.mp3",
    "lib/views/assets/songs/3.mp3",
    "lib/views/assets/songs/4.mp3",
    "lib/views/assets/songs/5.mp3",
    "lib/views/assets/songs/6.mp3",
    "lib/views/assets/songs/7.mp3",
    "lib/views/assets/songs/8.mp3",
    "lib/views/assets/songs/9.mp3",
    "lib/views/assets/songs/10.mp3",
    "lib/views/assets/songs/11.mp3",
    "lib/views/assets/songs/12.mp3",
    "lib/views/assets/songs/13.mp3",
  ];

  List Songs_Name=[
    "On My Way",
    "Beliver",
    "Wahraan",
    "Middle Of Night",
    "Gasolina",
    "Danza Kuduro",
    "Fearless",
    "Unstoppable",
    "Royalty",
    "Darkside",
    "Georgian Folk",
    "Despacito",
    "Heat Weaves",
  ];

  List Artists=[
    "Alan Walker",
    "Imagine Dragons",
    "Randall",
    "Elley Duhé",
    "Daddy Yankee, Pitbull, DJ Buddha, Noriega, Lil Jon",
    "Don Omar",
    "Lost Sky",
    "Sia",
    "Egzod, Maestro Chives, and Neoni",
    "Neoni",
    "Georgia Barnes",
    "Luois Fonsi",
    "Glass Animals",
  ];

  List Photos=[
    "lib/views/assets/images/1.jpg",
    "lib/views/assets/images/2.jpg",
    "lib/views/assets/images/3.jpg",
    "lib/views/assets/images/4.jpg",
    "lib/views/assets/images/5.jpg",
    "lib/views/assets/images/6.jpg",
    "lib/views/assets/images/7.jpg",
    "lib/views/assets/images/8.jpg",
    "lib/views/assets/images/9.jpg",
    "lib/views/assets/images/10.jpg",
    "lib/views/assets/images/11.jpg",
    "lib/views/assets/images/12.jpg",
    "lib/views/assets/images/13.png",
  ];

  AssetsAudioPlayer My_Audio_Player=AssetsAudioPlayer();
  Duration totalDuration=Duration.zero;

 My_Audio_Controller(){
   init();
 }

 init({int index=0}){
    print("++++++Called++++++");
    My_Audio_Player.open(Audio(Songs[index]),autoStart: false).then((value){
      totalDuration=My_Audio_Player.current.value!.audio.duration;
      notifyListeners();
      print("$index===");
    });
  }

  My_Seek({required int sec}){
   My_Audio_Player.seekBy(Duration(seconds: sec));
   notifyListeners();
  }

  Get_My_Index({required int index}){
   My_Audio_Player.pause();
    init(index: index);
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