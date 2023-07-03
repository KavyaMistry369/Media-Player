import 'package:flutter/material.dart';

class Video_Page extends StatefulWidget {
  const Video_Page({super.key});

  @override
  State<Video_Page> createState() => _Video_PageState();
}

class _Video_PageState extends State<Video_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,childAspectRatio: 2/3,crossAxisSpacing: 10),itemCount:20,itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
         height: 200,
          width: 150, decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.primaries[index%18],
        ),
          child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color: Colors.white,size: 50,))),
        ),
      )),
    );
  }
}