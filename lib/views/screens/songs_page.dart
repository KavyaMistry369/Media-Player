import 'package:flutter/material.dart';

class Songs_Page extends StatefulWidget {
  const Songs_Page({super.key});

  @override
  State<Songs_Page> createState() => _Songs_PageState();
}

class _Songs_PageState extends State<Songs_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:20,itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.primaries[index%18].shade500,
          ),
          title: Text("Songs ${index+1}"),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow)),
        ),
      ),),
    );
  }
}
