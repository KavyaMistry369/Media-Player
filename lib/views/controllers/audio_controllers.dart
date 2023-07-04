import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';
import 'package:media_player_app/views/utils/songs_utils.dart';

class My_Audio_Controller extends ChangeNotifier{

  List Songs_Name=[
    "On My Way",
    "Beliver",
  ];

  List Artists=[
    "Alan Walker",
    "Imagine Dragons",
  ];


  AssetsAudioPlayer My_Audio_Player=AssetsAudioPlayer();
  Duration totalDuration=Duration.zero;

  My_Audio_Controller(){
    print("++++++Called++++++");
    My_Audio_Player.open(Audio(audio_paths+My_Audio.beliver),autoStart: false).then((value){
      totalDuration=My_Audio_Player.current.value!.audio.duration;
    });

  }

  My_Play()async{
  await My_Audio_Player.play();
    notifyListeners();
  }

  My_Pause()async{
   await My_Audio_Player.pause();
    notifyListeners();
  }

  get isPlaying{
    return My_Audio_Player.isPlaying.value;
  }

}