// @dart=2.9
// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:admaya/screens/main/appointment_screen.dart';
import 'package:admaya/screens/main/chat_screen.dart';
import 'package:admaya/screens/main/home_screen.dart';
import 'package:admaya/screens/main/profile_screen.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final List<Widget> _pageList = [
    HomeScreen(),
    ChatScreen(),
    AppointmentScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 18,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.outline,
        ),
        backgroundColor: Theme.of(context).cardTheme.color,
        currentIndex: pageIndex,
        onTap: (int value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.heart),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.rocketChat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.calendar),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
