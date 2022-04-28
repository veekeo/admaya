import 'package:flutter/material.dart';

class Appointment {
  final Widget status;
  final String name;
  final String address;
  final String day;
  final String date;
  final String time;

  Appointment({
    required this.status,
    required this.name,
    required this.address,
    required this.day,
    required this.date,
    required this.time,
  });
}
