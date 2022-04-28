import 'package:admaya/components/appointments/appointment_status.dart';
import 'package:admaya/models/appointments/appointment_data.dart';
import 'package:flutter/material.dart';

List<Appointment> cancelledAppointments = [
  Appointment(
    status: AppointmentStatus(
      color: Colors.red,
      status: 'CANCELLED',
    ),
    name: 'Vougue Salon',
    address: 'No. 7, Ezenwa close oke-afa, Lagos.',
    day: 'TODAY',
    date: '28',
    time: '12:00PM',
  ),
];
