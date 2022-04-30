// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/screens/profile/account_settings/add_address.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Theme.of(context).colorScheme.outline,
                      size: 20,
                    ),
                  ),
                  addHorizontalSpace(20),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 23,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, bottom: 9),
                  child: Image.asset('assets/images/loc_illustration.png'),
                ),
                Text(
                  'Your Address',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                  ),
                ),
                addVerticalSpace(10),
                Text(
                  'We supply your address to any services \nthat travel to you. It is never made public.',
                  style: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 15,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: MainButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AddAddressScreen();
                    }));
                  },
                  text: 'Enter your address',
                  color: kPrimaryColor,
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
