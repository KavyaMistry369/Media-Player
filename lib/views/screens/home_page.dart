import 'package:flutter/material.dart';
import 'package:media_player_app/views/screens/songs_page.dart';
import 'package:media_player_app/views/screens/video_page.dart';

class Home_page extends StatefulWidget {
   Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();

}

class _Home_pageState extends State<Home_page>  with SingleTickerProviderStateMixin{

  late TabController My_Tab_Controller;

  @override
  void initState() {
    super.initState();
    My_Tab_Controller=TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Player",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
        centerTitle: true,
        bottom: TabBar(tabs: [
          Tab(
           icon: Icon(Icons.music_note),
          ),
          Tab(
            icon: Icon(Icons.video_camera_front),
          ),
        ],controller: My_Tab_Controller),
      ),
      body: TabBarView(
        controller: My_Tab_Controller,
          children: [
          Songs_Page(),
          Video_Page(),
      ]),
      );
  }
}
