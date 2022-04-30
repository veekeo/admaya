// ignore_for_file: prefer_const_constructors

import 'package:admaya/screens/main/profile_screen.dart';
import 'package:admaya/screens/profile/account_settings/account_details.dart';
import 'package:admaya/screens/profile/account_settings/adress.dart';
import 'package:admaya/screens/profile/account_settings/settings.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    'Account & Settings',
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AccountDetailsScreen();
                }));
              },
              profileLink: 'Account Details',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AddressScreen();
                }));
              },
              profileLink: 'Address',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingsScreen();
                }));
              },
              profileLink: 'Settings',
            ),
            addDividerWithPadding(16),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delete Account',
                      style: TextStyle(
                        fontFamily: 'Light',
                        fontSize: 17,
                        color: Colors.red,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.withOpacity(0.4),
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
            addDividerWithPadding(16),
          ],
        ),
      ),
    );
  }
}
