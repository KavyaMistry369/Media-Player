import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_player_app/views/controllers/audio_controllers.dart';
import 'package:media_player_app/views/screens/songs_detail_page.dart';
import 'package:media_player_app/views/screens/songs_page.dart';
import 'package:media_player_app/views/screens/video_page.dart';
import 'package:media_player_app/views/utils/route_utils.dart';
import 'package:provider/provider.dart';

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
        actions:[ IconButton(onPressed: (){
          Provider.of<My_Audio_Controller>(context,listen: false).My_Grid();
        }, icon: ( Provider.of<My_Audio_Controller>(context).isGrid)?Icon(Icons.grid_view_rounded,):Icon(Icons.list))],
        title: Text("Music Player",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
        centerTitle: true,
        bottom: TabBar(
            tabs: [
          GestureDetector(
            onLongPress: (){
              print("Pressssssssss");
              Navigator.of(context).pushNamed(My_routes.B_home);
            },
            child: Tab(
             text: "Songs",
            ),
          ),
          Tab(
            text: "Videos",
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
