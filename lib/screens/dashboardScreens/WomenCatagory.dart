import 'package:flutter/material.dart';
import 'package:new1/Data/fileData/CatagoryData.dart';


class WomenCatagory extends StatefulWidget {

  @override
  _WomenCatagoryState createState() => _WomenCatagoryState();
}

class _WomenCatagoryState extends State<WomenCatagory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("women"),
        leading: Icon(Icons.woman),
      ),

      body: ListView.builder(itemCount: womens.length,
        itemBuilder:(BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children:<Widget>[
                Image(image: AssetImage(womens[index])),
              ],
            ),
          );
        },

      ),

    );
  }
}