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
  late bool pageValue;

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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        backgroundColor: Theme.of(context).cardTheme.color,
        currentIndex: pageIndex,
        onTap: (int value) {
          setState(() {
            pageIndex = value;
            // if(pageIndex == value){
            //   pageValue = true;
            // }
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.search,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.envelope),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.calendar,
            ),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.userAlt,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
