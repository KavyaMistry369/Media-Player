import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:media_player_app/views/controllers/audio_controllers.dart';
import 'package:provider/provider.dart';

class Songs_Details extends StatefulWidget {
  Songs_Details({super.key});

  @override
  State<Songs_Details> createState() => _Songs_DetailsState();
}

class _Songs_DetailsState extends State<Songs_Details> {
  late AnimationController My_Animation_Controller;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
            tooltip: "Song Add to Playlist",
            color: Colors.green,
              onPressed: (){}, icon: Icon(Icons.playlist_add_circle_outlined)),
        ],
      ),
      body:Consumer<My_Audio_Controller>(
        builder: (context,provider, child) {
          return StreamBuilder(
            stream: provider.CurrentPosition,
            builder:(context, AsyncSnapshot<Duration>snapshot) {
            if(snapshot.hasData)
              {
                double CurrentPosition=snapshot.data!.inSeconds.toDouble();
                return Container(
                  child: Stack(
                    children:[
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Image.asset("${provider.Photos[index]}",fit: BoxFit.fill,),
                      ),
                      GlassmorphicContainer(
                        width: double.infinity,
                        height: double.infinity,
                        borderRadius:0,
                        blur: 20,
                        alignment: Alignment.bottomCenter,
                        border: 0,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.1),
                              Color(0xFFFFFFFF).withOpacity(0.05),
                            ],
                            stops: [
                              0.1,
                              1,
                            ]),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: Padding(padding: EdgeInsets.all(16),child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 300,
                                  width: 300,
                                  color: Colors.amber,
                                  child: Image.asset("${provider.Photos[index]}",fit: BoxFit.cover,),
                                ),
                                SizedBox(height: 30,),
                                Text("${provider.Songs_Name[index]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                Text("${provider.Artists[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                                SizedBox(height: 20,),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                      trackHeight: 28,
                                      thumbColor: Colors.transparent,
                                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
                                  child: Slider(
                                      thumbColor: Colors.white,
                                      activeColor: Colors.green,
                                      value: CurrentPosition,min: 0 ,max: provider.totalDuration.inSeconds.toDouble(),onChanged: (value){
                                    provider.My_Seek(sec: value.toInt());
                                  }),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("${snapshot.data!.inMinutes}:${snapshot.data!.inSeconds % 60}"),
                                    Text("${provider.totalDuration.inMinutes}:${provider.totalDuration.inSeconds % 60}"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(onPressed: (){
                                      provider.My_Seek(sec: -10);
                                    }, icon: Icon(Icons.fast_rewind,size:25,)),
                                    IconButton(onPressed: (){
                                      provider.My_Pause();
                                    }, icon: Icon(Icons.pause,size:50,)),
                                    IconButton(onPressed: (){
                                      provider.My_Seek(sec: 10);
                                    }, icon: Icon(Icons.fast_forward,size: 25,)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),),
                      ),
                  ],
                  ),
                );
              }
            return Text("");
          },);
        } ,
      ),
    );
  }
}
