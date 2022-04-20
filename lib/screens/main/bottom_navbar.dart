// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/screens/main/appointment_screen.dart';
import 'package:admaya/screens/main/chat_screen.dart';
import 'package:admaya/screens/main/discover_screen.dart';
import 'package:admaya/screens/main/home_screen.dart';
import 'package:admaya/screens/main/profile_screen.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final List<Widget> _pageList = [
    HomeScreen(),
    DiscoverScreen(),
    ChatScreen(),
    AppointmentScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedIconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        backgroundColor: Theme.of(context).cardTheme.color,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.search,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.inbox),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.calendar,
            ),
            label: "Appointment",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.userAlt,
            ),
            label: 'person',
          ),
        ],
      ),
    );
  }
}
