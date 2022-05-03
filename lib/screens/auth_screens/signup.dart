// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unrelated_type_equality_checks

import 'package:admaya/components/outline_button.dart';
import 'package:admaya/screens/auth_screens/email_signup.dart';
import 'package:admaya/screens/auth_screens/phone_number.dart';
import 'package:admaya/theme_provider.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class SignUpScreen extends StatelessWidget {
  final Duration initialDelay = Duration(milliseconds: 300);
  late final ThemeData isDark = MyTheme.darkTheme;
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
                DelayedDisplay(
                  delay: initialDelay,
                  child: Image.asset(
                    'assets/images/logo_main.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                addVerticalSpace(10),
                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    'Sign in \nto get started.',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                      fontFamily: 'Bold',
                      fontSize: 35,
                    ),
                  ),
                ),
                addVerticalSpace(15),
                DelayedDisplay(
                  delay: Duration(milliseconds: 600),
                  child: RichText(
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
                ),
              ],
            ),
            addVerticalSpace(15),
            Column(
              children: [
                addVerticalSpace(10),
                DelayedDisplay(
                  delay: Duration(milliseconds: 700),
                  child: OulineButtonContainer(
                    image: 'assets/images/google.png',
                    text: 'Continue with Google',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PhoneNumberScreen();
                      }));
                    },
                  ),
                ),
                addVerticalSpace(10),
                DelayedDisplay(
                  delay: Duration(milliseconds: 750),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EmailSignUpScreen();
                      }));
                    },
                    child: Container(
                      height: 56,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email_outlined),
                          addHorizontalSpace(20),
                          Text(
                            'Continue with Email',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontFamily: 'Light',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
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
