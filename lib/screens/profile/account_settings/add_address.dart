// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            addVerticalSpace(16),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: TextFormField(
                keyboardType: TextInputType.streetAddress,
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 17,
                ),
                cursorColor: kPrimaryColor,
                cursorWidth: 1,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  hintText: 'Street & Number',
                  hintStyle: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 17,
                  ),
                  isDense: true,
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                ),
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 17,
                  decoration: TextDecoration.none,
                ),
                cursorColor: kPrimaryColor,
                cursorWidth: 1,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  hintText: 'Apartment or Suite Number(optional)',
                  hintStyle: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 17,
                  ),
                  isDense: true,
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                ),
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: TextFormField(
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 17,
                ),
                cursorColor: kPrimaryColor,
                cursorWidth: 1,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  hintText: 'City',
                  hintStyle: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 17,
                  ),
                  isDense: true,
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                ),
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 17,
                ),
                cursorColor: kPrimaryColor,
                cursorWidth: 1,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  hintText: 'Zip Code',
                  hintStyle: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 17,
                  ),
                  isDense: true,
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                ),
              ),
            ),
            addDividerWithPadding(16),
            addVerticalSpace(230),
            Center(
              child: MainButton(
                onPressed: () {},
                text: 'Save',
                color: kPrimaryColor,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
