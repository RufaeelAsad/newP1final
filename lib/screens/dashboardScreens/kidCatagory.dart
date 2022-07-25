import 'package:flutter/material.dart';

import 'package:new1/Data/fileData/CatagoryData.dart';


class KidCatagory extends StatefulWidget {

  @override
  _KidCatagoryState createState() => _KidCatagoryState();
}

class _KidCatagoryState extends State<KidCatagory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Kids"),
        leading: Icon(Icons.child_care),
      ),

      body: ListView.builder(itemCount: kid.length,
        itemBuilder:(BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children:<Widget>[
                Image(image: AssetImage(kid[index])),
              ],
            ),
          );
        },

      ),

    );
  }
}