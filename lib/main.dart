// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth_screen/athentification_screen.dart';
//import 'package:flutter_application_1/screens/auth_screen/athentification_screen.dart';
import 'package:flutter_application_1/screens/auth_screen/driver_auth_screen.dart/bus_driver_screen.dart';
import 'package:flutter_application_1/screens/auth_screen/driver_auth_screen.dart/company_screen.dart';
import 'package:flutter_application_1/screens/auth_screen/driver_auth_screen.dart/vehicle_screen.dart';
import 'package:flutter_application_1/screens/booking_screen/booking_screen.dart';
import 'package:flutter_application_1/screens/booking_screen/selected_bus_screen.dart';

import 'package:flutter_application_1/screens/booking_screen/selected_trip_screen.dart';
import 'package:flutter_application_1/screens/booking_screen/ticket_bus.dart';
import 'package:flutter_application_1/screens/home_screens/from_to_dist_secreenprt.dart';
import 'package:flutter_application_1/screens/home_screens/home_screen.dart';
import 'package:flutter_application_1/screens/auth_screen/signup_screen.dart';
//import 'package:flutter_application_1/screens/other_screens/bmi_screen.dart';
import 'package:flutter_application_1/screens/other_screens/display_client.dart';

//import 'package:flutter_application_1/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBusBooking',
      routes: {
        '/': (context) => FromToWidget(),
        '/home': (context) => IntroScreen(),
        '/signup': (context) => SingUpScreen(),
        '/busDriver': (context) => BusDriverScreen(),
        '/vehicle': (context) => VehicleInfoScreen(),
        '/buslist': (context) => SelectedTrip(
              depart: '',
              arrival: '',
            ),
        '/booking': (context) => BookingScreen(
              arrival: '',
              depart: '',
            ),
        '/company': (context) => CompanyScreenInfo(),
        '/ticket': (context) => Ticket(date: '', from: '', to: '', status: ''),
        '/authentificationScreen': (context) => AuthentificationScreen(),
        '/selectedBus': (context) => SelectedBus(
              busId: 0,
            ),
      },
      initialRoute: '/',
    );
  }
}
