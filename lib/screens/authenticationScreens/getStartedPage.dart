import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:new1/screens/authenticationScreens/loginPage.dart';
import 'package:new1/screens/authenticationScreens/signUp.dart';


class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecf1f4),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 350,
              width: 350,
              child: Lottie.asset('assets/animations/getStartedPage.json'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          })
                  );
                },
                child: Text(
                  'LOGIN', style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffecf1f4)
                ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff2193b0),
                  fixedSize: Size(300, 65),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // textStyle: TextStyle(
                  //   fontSize: 30
                  // )
                )
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegistrationScreen()));
                },
                child: Text(
                  'SIGNUP', style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffecf1f4)
                ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff2193b0),
                  fixedSize: Size(300, 65),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // textStyle: TextStyle(
                  //   fontSize: 30
                  // )
                )
            )
          ],
        ),
      ),
    );
  }
}