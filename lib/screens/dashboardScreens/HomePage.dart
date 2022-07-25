import 'dart:ui';

import 'package:new1/Data/fileData/constraints.dart';

import 'package:flutter/material.dart';

import 'package:new1/Data/deleteThis.dart';

import 'package:new1/screens/authenticationScreens/loginPage.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:new1/screens/dashboardScreens/WomenCatagory.dart';
import 'package:new1/screens/dashboardScreens/recommendationPage.dart';
import 'package:new1/screens/dashboardScreens/kidCatagory.dart';
import 'package:new1/screens/dashboardScreens/menCatagory.dart';
import 'package:new1/screens/dashboardScreens/profilePage.dart';
import 'package:new1/screens/dashboardScreens/storePage.dart';

import 'detailPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff5f7fa),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: getDrawer(),
      body: getBody(),
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  Widget getDrawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Colors.blueGrey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Profile.jpg'),
                      fit: BoxFit.fill),

                  ),
                ),

                Text(
                  "Rufaeel Asad",
                  style:  TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                Text(
                  "rufaeelasad@gmail.com",
                  style:  TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text( 'Profile',
              style: TextStyle(fontSize: 20,
              color: Colors.black45),),
            onTap: () {
              Navigator.push(
                  context,
              MaterialPageRoute(
                  builder: (context) => AccountPage() ));
            },
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text( 'Stores',
              style: TextStyle(fontSize: 20, color: Colors.black45),),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => StorePage() ));
            },
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text( 'ChatBot', style: TextStyle(fontSize: 20,color: Colors.black45)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Container() ));
            },
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text( 'Recomendations', style: TextStyle(fontSize: 20, color: Colors.black45),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => RecommendationPage() ));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text( 'Logout', style: TextStyle(fontSize: 20, color: Colors.black45),),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage() ));
            },
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    return Scrollbar(
      thickness: 15.5,
      interactive: true,
      controller: _scrollController,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore Our Collections",
                  style: TextStyle(color: Color(0xffa3a3a3)),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WomenCatagory();
                  }));
                },
                child: buildDisCoverCircle(
                  image: "assets/images/woman.jpg",
                  title: "Women",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ManCatagory();
                  }));
                },
                child: buildDisCoverCircle(
                  image: "assets/images/men.jpg",
                  title: "Men",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return KidCatagory();
                  }));
                },
                child: buildDisCoverCircle(
                  image: "assets/images/kid.jpg",
                  title: "Kid",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  hintText: "Search for products",
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide.none)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: images.length,
              primary: true,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Detail(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        images[index],
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 7.0),
                            decoration: BoxDecoration(
                              color: Colors.white12.withOpacity(0.1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Berrylush",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "\$120",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "casual cottonamger",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.white),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      width: 180,
                      height: 220,
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      categories[index]['imgUrl'].toString()),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Positioned(
                          bottom: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              categories[index]['title'].toString(),
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  'Recommended for you',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(recommends.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(
                                    recommends[index]['imgUrl'].toString()),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        child: Column(
                          children: [
                            Text(
                              recommends[index]['title'].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  height: 1.5),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Text(
                  'Recent Viewed',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(recently.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(
                                    recently[index]['imgUrl'].toString()),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        child: Column(
                          children: [
                            Text(
                              recently[index]['title'].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  height: 1.5),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDisCoverCircle({String? image, String? title}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
            child: PhysicalShape(
              color: Colors.white,
              shadowColor: Colors.black,
              clipBehavior: Clip.hardEdge,
              clipper: ShapeBorderClipper(
                shape: CircleBorder(),
              ),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image.toString()))),
              ),
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(title.toString(), style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
