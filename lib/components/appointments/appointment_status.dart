// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AppointmentStatus extends StatelessWidget {
  final Color color;
  final String status;

  AppointmentStatus({
    required this.color,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          status,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Regular',
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
