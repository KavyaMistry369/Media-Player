import 'package:flutter/material.dart';
import 'package:media_player_app/views/controllers/audio_controllers.dart';
import 'package:media_player_app/views/controllers/bhajan_controllers.dart';
import 'package:media_player_app/views/controllers/video_controller.dart';
import 'package:media_player_app/views/screens/bhajan_detail.dart';
import 'package:media_player_app/views/screens/home_page.dart';
import 'package:media_player_app/views/screens/songs_detail_page.dart';
import 'package:media_player_app/views/utils/route_utils.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => My_Audio_Controller(),),
      ChangeNotifierProvider(create: (context) => My_Video_Controller(),),
      ChangeNotifierProvider(create: (context) => My_Bhajan_Controller(),),
    ],child: MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      routes: {
        '/':(context) => Home_page(),
        My_routes.detail:(context) => Songs_Details(),
        My_routes.Detail:(context) => Bhajan_Details(),
      },
    );
  }
}

