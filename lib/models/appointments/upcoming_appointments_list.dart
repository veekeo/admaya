import 'package:admaya/components/appointments/appointment_status.dart';
import 'package:admaya/models/appointments/appointment_data.dart';
import 'package:flutter/material.dart';

List<Appointment> upcomingAppointments = [
  Appointment(
    status: AppointmentStatus(
      color: Colors.green,
      status: 'CONFIRMED',
    ),
    name: 'Vougue Salon',
    address: 'No. 7, Ezenwa close oke-afa, Lagos.',
    day: 'TODAY',
    date: '28',
    time: '12:00PM',
  ),
  Appointment(
    status: AppointmentStatus(
      color: Colors.amber,
      status: 'PENDING',
    ),
    name: 'Flawless Salon',
    address: 'No. 8, Felix street Ijegun, Lagos.',
    day: 'YESTERDAY',
    date: '15',
    time: '1:00PM',
  ),
];
