import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_player_app/views/controllers/audio_controllers.dart';
import 'package:media_player_app/views/utils/route_utils.dart';
import 'package:provider/provider.dart';

class Songs_Page extends StatefulWidget {
  const Songs_Page({super.key});

  @override
  State<Songs_Page> createState() => _Songs_PageState();
}

class _Songs_PageState extends State<Songs_Page> {
  @override
  Widget build(BuildContext context) {
    return Consumer<My_Audio_Controller>(
      builder: (context,provider,child) {
        return Scaffold(
          body:(provider.isGrid)? ListView.builder(itemCount:12,itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(My_routes.detail,arguments: index);
            },
            child: Card(
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CupertinoContextMenu(
                    actions: [
                      CupertinoContextMenuAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        trailingIcon: CupertinoIcons.download_circle,
                        child: const Text('Download'),
                      ),
                    ],
                      child: Image.asset("${provider.Photos[index]}",fit: BoxFit.cover,)),
                ),
                title: Text("${provider.Songs_Name[index]}"),
                subtitle: Text("${provider.Artists[index]}",style: TextStyle(overflow: TextOverflow.ellipsis),),
                trailing: IconButton(onPressed: (){
                  provider.Get_My_Index(index: index);
                  provider.My_Play();
                  Navigator.of(context).pushNamed(My_routes.detail,arguments: index);
                }, icon: Icon(Icons.play_arrow)),
              ),
            ),
          ),):GridView.builder(
            itemCount:12,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 2/3), itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                height: 200,
                width: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      CupertinoContextMenu(
                          actions: [
                            CupertinoContextMenuAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              trailingIcon: CupertinoIcons.download_circle,
                              child: const Text('Download'),
                            ),
                          ],
                          child: Center(child: Image.asset("${provider.Photos[index]}",fit: BoxFit.cover))),
                      SizedBox(height: 20,),
                      Text("${provider.Songs_Name[index]}",style: TextStyle(fontSize: 18),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.of(context).pushNamed(My_routes.detail,arguments: index);
                            provider.My_Play();
                          }, icon: Icon(Icons.play_arrow,size: 30,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),)
        );
      }
    );
  }
}
