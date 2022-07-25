import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../authenticationScreens/getStartedPage.dart';
import 'intoPage1.dart';
import 'introPage2.dart';
import 'introPage3.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          PageView(

            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index==2);
              });
            },

            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          Container(

            alignment: Alignment(0, 0.85),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2193b0)
                    ),
                  ),
                ),

                SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                  effect: SlideEffect(
                    dotColor: Colors.blueGrey,
                    activeDotColor: Color(0xff2193b0)
                  ),
                ),
                onLastPage ? GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return GetStartedPage();
                        }));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff2193b0)),
                    ),
                  )
                    : GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text(
                  'Next',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,color: Color(0xff2193b0)),
                  ),
                )

              ],
            ),
          )
        ],
      ),

    );
  }
}