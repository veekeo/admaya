// @dart=2.9
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/screens/auth_screens/signup.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class IntroScreen extends StatelessWidget {
  final Duration initialDelay = Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/model.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DelayedDisplay(
                  delay: initialDelay,
                  child: Image.asset(
                    'assets/images/logo_white.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                addVerticalSpace(10),
                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    'Find Beauticians',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Bold',
                      fontSize: 35,
                    ),
                  ),
                ),
                addVerticalSpace(5),
                DelayedDisplay(
                  delay: Duration(milliseconds: 600),
                  child: Text(
                    'near you, book appointments and chat',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Light',
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                addVerticalSpace(30),
                MainButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }));
                  },
                  color: kPrimaryColor,
                  text: 'Continue',
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
