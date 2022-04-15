// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/components/outline_button.dart';
import 'package:admaya/screens/auth_screens/phone_number.dart';

import 'package:admaya/utils/helper.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo_main.png',
                  width: 60,
                  height: 60,
                ),
                addVerticalSpace(10),
                Text(
                  'Sign in \nto get started.',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    fontFamily: 'Bold',
                    fontSize: 35,
                  ),
                ),
                addVerticalSpace(15),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'By proceeding, you agree to our ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Theme.of(context).textTheme.bodyText1?.color,
                          fontFamily: 'Light',
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Use ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Theme.of(context).textTheme.bodyText1?.color,
                          fontFamily: 'Medium',
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      TextSpan(
                        text: 'and \nconfirm you have read our ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Theme.of(context).textTheme.bodyText1?.color,
                          fontFamily: 'Light',
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy and Cookie \nStatement',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Theme.of(context).textTheme.bodyText1?.color,
                          fontFamily: 'Medium',
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            addVerticalSpace(15),
            Column(
              children: [
                addVerticalSpace(10),
                OulineButtonContainer(
                  image: 'assets/images/google.png',
                  text: 'Continue with Google',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PhoneNumberScreen();
                    }));
                  },
                ),
                addVerticalSpace(10),
                OulineButtonContainer(
                  image: 'assets/images/envelope.png',
                  text: 'Continue with Email',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PhoneNumberScreen();
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
