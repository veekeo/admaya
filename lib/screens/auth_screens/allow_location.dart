// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class AllowLocationScreen extends StatelessWidget {
  final Duration initialDelay = Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25, top: 100, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DelayedDisplay(
                  delay: initialDelay,
                  child: Image.asset(
                    'assets/images/location.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                addVerticalSpace(10),
                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    'Explore beautician \nrecommended spots \nnear you, wherever \nyou are.',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                      fontFamily: 'Bold',
                      fontSize: 32,
                    ),
                  ),
                ),
                addVerticalSpace(15),
              ],
            ),
            addVerticalSpace(15),
            Column(
              children: [
                addVerticalSpace(10),
                MainButton(
                  onPressed: () {},
                  text: 'Allow location data',
                  color: Theme.of(context).colorScheme.onSecondary,
                  textColor: Colors.white,
                ),
                addVerticalSpace(20),
                Text(
                  'Not now',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: kPrimaryColor,
                    fontFamily: 'Medium',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
