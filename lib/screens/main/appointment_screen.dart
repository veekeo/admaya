// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Appointment Screen',
          style: TextStyle(color: Theme.of(context).colorScheme.outline),
        ),
      ),
    );
  }
}
