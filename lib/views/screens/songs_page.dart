import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_player_app/views/controllers/audio_controllers.dart';
import 'package:media_player_app/views/controllers/bhajan_controllers.dart';
import 'package:media_player_app/views/utils/route_utils.dart';
import 'package:provider/provider.dart';

class Songs_Page extends StatelessWidget {
  const Songs_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<My_Audio_Controller>(
      builder:(context,provider, child) => Scaffold(
        body: Padding(padding: EdgeInsets.all(16),child: Center(
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Play Your Favorite Songs",style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold),),
                SizedBox(height: 50,),
                CarouselSlider(items: List.generate(provider.Songs.length, (index) => SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("${provider.Songs_Name[index]}",style: TextStyle(fontSize: 18),),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GestureDetector(onTap:(){
                          Provider.of<My_Audio_Controller>(context,listen: false).Get_My_Index(index: index);
                          Provider.of<My_Audio_Controller>(context,listen: false).My_Play();
                          Navigator.of(context).pushNamed(My_routes.detail,arguments: index);
                        },child: Image.asset("${provider.Photos[index]}",width: 260,)),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                )), options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                )),
                SizedBox(height: 50,),
                Text("Play Your Favorite Bhajans",style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold)),
                SizedBox(height: 50,),
                CarouselSlider(items: List.generate(Provider.of<My_Bhajan_Controller>(context,listen: false).Bhajans.length, (index) => SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("${Provider.of<My_Bhajan_Controller>(context,listen: false).Bhajan_Name[index]}",style: TextStyle(fontSize: 18),),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GestureDetector(onTap:(){
                          Provider.of<My_Bhajan_Controller>(context,listen: false).Get_My_Index(index: index);
                          Provider.of<My_Bhajan_Controller>(context,listen: false).My_Play();
                          Navigator.of(context).pushNamed(My_routes.Detail,arguments: index);
                        },child: Image.asset("${Provider.of<My_Bhajan_Controller>(context).Bhajan_Photos[index]}",width: 260,)),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                )), options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                )),
              ],
            ),
          ),
        ),),
      ),
    );
  }
}
