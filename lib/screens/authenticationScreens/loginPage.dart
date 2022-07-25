import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new1/screens/authenticationScreens/signUp.dart';

import '../dashboardScreens/rootPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageStae createState() => _LoginPageStae();
}

class _LoginPageStae extends State<LoginPage> {
  GlobalKey<FormState> _globalKey = GlobalKey();

  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  final _auth = FirebaseAuth.instance;

  String? errorMessage;

  void _signIn(String email, String password) async {
    if (_globalKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  Fluttertoast.showToast(msg: "Logiin Successfull"),
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RootPage()))
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }

  String? _validateUserName(String? value) {
    return value!.isEmpty ? 'Username is Invalid' : null;
  }

  String? _validatePassword(String? value) {
    return value!.isEmpty ? 'Password is Invalid' : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 40.0,
              ),
              Image(
                image: AssetImage('assets/images/loginPage.png'),
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: double.infinity,
                height: 40.0,
              ),
              Form(
                key: _globalKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) => _validateUserName(value),
                        controller: _controller1,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            labelText: 'USERNAME',
                            hintText: 'Enter Username',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) => _validatePassword(value),
                        controller: _controller2,
                        autocorrect: false,
                        enableSuggestions: false,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        _signIn(_controller1.text, _controller2.text);
                      },
                      child: Text('Login'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueGrey),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RegistrationScreen();
                        }));
                      },
                      child: Text('Signup '),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueGrey),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blueGrey),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
