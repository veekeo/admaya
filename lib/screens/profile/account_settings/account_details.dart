// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Account Details',
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 23,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'PERSONAL DETAILS',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: 12,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
            ),
            addVerticalSpace(16),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.user,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    size: 18,
                  ),
                  addHorizontalSpace(15),
                  Text(
                    'Veekeo',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 15,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.envelope,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    size: 18,
                  ),
                  addHorizontalSpace(15),
                  Text(
                    'chiagorovictor@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 15,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  addHorizontalSpace(70),
                  Text(
                    'Change',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 12,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color!
                          .withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    size: 18,
                  ),
                  addHorizontalSpace(15),
                  Text(
                    '+234 814 575 2680',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 15,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  addHorizontalSpace(121),
                  Text(
                    'Change',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 12,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color!
                          .withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            addVerticalSpace(280),
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
