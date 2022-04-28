// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:admaya/components/appointments/cancelled_appointments.dart';
import 'package:admaya/components/appointments/upcoming_appointments.dart';
import 'package:admaya/models/appointments/cancelled_appointments_list.dart';
import 'package:admaya/models/appointments/upcoming_appointments_list.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Text(
                    'Upcoming Apointments',
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 24,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return UpcomingAppointments(
                      status: upcomingAppointments[index].status,
                      name: upcomingAppointments[index].name,
                      address: upcomingAppointments[index].address,
                      day: upcomingAppointments[index].day,
                      date: upcomingAppointments[index].date,
                      time: upcomingAppointments[index].time,
                    );
                  },
                  itemCount: upcomingAppointments.length,
                ),
              ),
            ),
            addVerticalSpace(5),
            Divider(
              height: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Text(
                    'Cancelled Apointments',
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 24,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CancelledAppointments(
                      status: cancelledAppointments[index].status,
                      name: cancelledAppointments[index].name,
                      address: cancelledAppointments[index].address,
                      day: cancelledAppointments[index].day,
                      date: cancelledAppointments[index].date,
                      time: cancelledAppointments[index].time,
                    );
                  },
                  itemCount: cancelledAppointments.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
