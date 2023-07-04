import 'package:flutter/material.dart';
import 'package:media_player_app/views/controllers/audio_controllers.dart';
import 'package:provider/provider.dart';

class Songs_Details extends StatelessWidget {
  const Songs_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(padding: EdgeInsets.all(16),child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
              Provider.of<My_Audio_Controller>(context,listen: false).My_Play();
            }, icon: Icon(Icons.play_arrow)),
            IconButton(onPressed: (){
              Provider.of<My_Audio_Controller>(context,listen: false).My_Pause();
            }, icon: Icon(Icons.pause)),
          ],
        ),
      ),),
    );
  }
}
