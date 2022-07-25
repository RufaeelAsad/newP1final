import 'package:flutter/material.dart';
import 'package:new1/Data/fileData/constraints.dart';
import 'package:new1/screens/dashboardScreens/recommendationPage.dart';
import 'package:new1/screens/dashboardScreens/profilePage.dart';
import 'package:new1/screens/dashboardScreens/storePage.dart';
import 'package:new1/screens/dashboardScreens/ChatBot/chat.dart';

import 'HomePage.dart';

class RootPage extends StatefulWidget{
  @override
  _RootPageState createState() => _RootPageState();
}
class _RootPageState extends State<RootPage> {

  int activeTab = 0;
  AppBar? appbar = null;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: getBody(),
      bottomNavigationBar: getFooter(),

    );
  }

  PreferredSizeWidget? getAppBar() {
    switch (activeTab) {
      case 0:
        appbar = null;
        break;
      case 1:
        appbar = null;
        break;
      case 2:
        appbar = null;
        break;
      case 3:
        appbar = null;
        break;
      case 4:
        appbar = null;
        break;
      default:

    }
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        StorePage(),
        AccountPage(),
        RecommendationPage(),
        Chat(),



      ],
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xfff5f7fa),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemsTab.length, (index) {
            return IconButton(
              icon: Icon(
                itemsTab[index]['icon'],
                size: itemsTab[index]['size'],
                color: activeTab == index ? Colors.blueGrey: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }

}