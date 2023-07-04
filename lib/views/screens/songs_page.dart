import 'package:flutter/material.dart';
import 'package:media_player_app/views/controllers/audio_controllers.dart';
import 'package:media_player_app/views/utils/route_utils.dart';
import 'package:provider/provider.dart';

class Songs_Page extends StatelessWidget {
  const Songs_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<My_Audio_Controller>(
      builder: (context,provider,child) {
        return Scaffold(
          body: ListView.builder(itemCount:2,itemBuilder: (context, index) => GestureDetector(
            onTap: (){
            Navigator.of(context).pushNamed(My_routes.detail);
            },
            child: Card(
              child: ListTile(
                title: Text("${provider.Songs_Name[index]}"),
                subtitle: Text("${provider.Artists[index]}"),
                trailing: IconButton(onPressed: (){
                  provider.My_Play();
                }, icon: Icon(Icons.play_arrow)),
              ),
            ),
          ),),
        );
      }
    );
  }
}
