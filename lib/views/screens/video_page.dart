import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:media_player_app/views/controllers/video_controller.dart';
import 'package:provider/provider.dart';

class Video_Page extends StatefulWidget {
  const Video_Page({super.key});
  @override
  State<Video_Page> createState() => _Video_PageState();
}

class _Video_PageState extends State<Video_Page> {
  @override
  Widget build(BuildContext context) {
    return Consumer<My_Video_Controller>(
      builder: (context,provider,_) {
        return Scaffold(
          body: GridView.builder(
              itemCount:provider.My_Videos.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 10,childAspectRatio: 1/1,crossAxisSpacing: 10),itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             height: 200,
              width: 150, decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
              child: Chewie(
                  controller: provider.All_Chewie[index]),
            ),
          )),
        );
      }
    );
  }
}