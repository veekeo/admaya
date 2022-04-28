// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class CancelledAppointments extends StatelessWidget {
  final Widget status;
  final String name;
  final String address;
  final String day;
  final String date;
  final String time;

  CancelledAppointments({
    required this.status,
    required this.name,
    required this.address,
    required this.day,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            width: 220,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              border: Border.all(
                width: 1,
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  status,
                  addVerticalSpace(5),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 23,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    address,
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 12,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  addVerticalSpace(5),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Book again',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Regular',
                        fontSize: 17,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      primary: kPrimaryColor,
                      fixedSize: const Size(180, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 108,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(
                width: 1,
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    day,
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 12,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    date,
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 35,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    time,
                    style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 15,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  addVerticalSpace(10)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
