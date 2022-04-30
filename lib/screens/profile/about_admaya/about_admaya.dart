// ignore_for_file: prefer_const_constructors

import 'package:admaya/screens/main/profile_screen.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class AboutAdmayaScreen extends StatelessWidget {
  const AboutAdmayaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                    'About Admaya',
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 23,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {},
              profileLink: 'Terms of Service',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {},
              profileLink: 'Privacy Policy',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {},
              profileLink: 'Licences',
            ),
            addDividerWithPadding(16),
          ],
        ),
      ),
    );
  }
}
