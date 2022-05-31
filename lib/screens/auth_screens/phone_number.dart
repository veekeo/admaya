// @dart=2.9
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/screens/auth_screens/allow_location.dart';
import 'package:admaya/utils/helper.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatefulWidget {
  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25, top: 50, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Enter your Number',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    fontFamily: 'Bold',
                    fontSize: 20,
                  ),
                ),
                addVerticalSpace(20),
                Row(
                  children: [
                    Container(
                      width: 300 / 3,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.zero,
                          bottomRight: Radius.zero,
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        children: [
                          countryCodePicker(context),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 210,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          bottomLeft: Radius.zero,
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      child: TextFormField(
                        autofocus: true,
                        // onChanged: (value) {
                        //   setState(() {
                        //     email = value;
                        //   });
                        // },
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 20,
                          decoration: TextDecoration.none,
                        ),
                        keyboardType: TextInputType.phone,
                        cursorColor: kPrimaryColor,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 20,
                          ),

                          // validator: (value) => validateEmail(value),
                        ),
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(10),
                Text(
                  'We will send an SMS code to \nverify your number',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    fontFamily: 'Light',
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                MainButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AllowLocationScreen();
                    }));
                  },
                  text: 'Continue',
                  color: kPrimaryColor,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  CountryCodePicker countryCodePicker(BuildContext context) {
    return CountryCodePicker(
      padding: EdgeInsets.only(left: 14),
      hideMainText: true,
      initialSelection: 'NG',
      dialogSize: Size(500, 700),
      dialogBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: 'Search country/codes...',
        hintStyle: TextStyle(
          fontFamily: 'Light',
        ),
      ),
    );
  }
}
