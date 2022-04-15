// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                CountryCodePicker(
                  initialSelection: 'NG',
                  showCountryOnly: false,
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    fontFamily: 'Medium',
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                  ),
                  flagWidth: 30,
                  searchDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Search country',
                    hintStyle: TextStyle(
                      fontFamily: 'Light',
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
