// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/screens/main/profile_screen.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool status = false;
  bool status2 = false;
  bool status3 = false;
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
                    'Settings',
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
                'NOTIFICATIONS',
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Show Notifications',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 17,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  FlutterSwitch(
                    activeColor: kPrimaryColor,
                    width: 70.0,
                    height: 30.0,
                    valueFontSize: 14.0,
                    toggleSize: 40.0,
                    value: status,
                    borderRadius: 30.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Text(
                'IF APPOINTMENT STATUS CHANGES NOTIFFY ME BY',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: 12,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'App Notification',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 17,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  FlutterSwitch(
                    activeColor: kPrimaryColor,
                    width: 70.0,
                    height: 30.0,
                    valueFontSize: 14.0,
                    toggleSize: 40.0,
                    value: status2,
                    borderRadius: 30.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status2 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 17,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  FlutterSwitch(
                    activeColor: kPrimaryColor,
                    width: 70.0,
                    height: 30.0,
                    valueFontSize: 14.0,
                    toggleSize: 40.0,
                    value: status3,
                    borderRadius: 30.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status3 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Text(
                'SETTINGS',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: 12,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
            ),
            addDividerWithPadding(16),
            ProfileTile(onTap: () {}, profileLink: 'Change Password'),
            addDividerWithPadding(16),
          ],
        ),
      ),
    );
  }
}
