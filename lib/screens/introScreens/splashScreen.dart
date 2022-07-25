import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'onBoardingScreen.dart';



class SplashScreen extends StatefulWidget {
  @override

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, 
          MaterialPageRoute(builder: (context) => OnBoardingScreen()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecf1f4),

      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Lottie.asset('assets/animations/splashLogo.json'),
            ),

            SizedBox(height: 10.0),

            Text(
              'Discover the new you',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff2193b0),
                fontFamily: 'KaushanScript'
              ),
            )
          ],
        ),
      ),

    );
  }
}