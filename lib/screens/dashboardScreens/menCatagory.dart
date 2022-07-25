import 'package:flutter/material.dart';
import 'package:new1/Data/fileData/CatagoryData.dart';


class ManCatagory extends StatefulWidget {

  @override
  _ManCatagoryState createState() => _ManCatagoryState();
}

class _ManCatagoryState extends State<ManCatagory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Man"),
        leading: Icon(Icons.man),
      ),

      body: ListView.builder(itemCount: men.length,
        itemBuilder:(BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children:<Widget>[
                Image(image: AssetImage(men[index])),
              ],
            ),
          );
        },

      ),

    );
  }
}