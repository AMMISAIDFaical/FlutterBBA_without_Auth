// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth_screen/client_signup_screen.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);
  @override
  SingUpScreenState createState() => SingUpScreenState();
}

class SingUpScreenState extends State<SingUpScreen> {
  bool PassengerCbox = false;
  bool BusDriverCbox = false;
  double fontSize = 17.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            'Specifey User',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Passenger',
                style: TextStyle(fontSize: fontSize),
              ),
              Checkbox(
                checkColor: Colors.black,
                activeColor: Colors.greenAccent,
                value: PassengerCbox,
                onChanged: (PassengerCbox) {
                  setState(() {
                    this.PassengerCbox = PassengerCbox!;
                  });
                },
              ),
              Text(
                'Bus Driver',
                style: TextStyle(fontSize: fontSize),
              ),
              Checkbox(
                checkColor: Colors.black,
                activeColor: Colors.greenAccent,
                value: BusDriverCbox,
                onChanged: (BusDriverCbox) {
                  setState(() {
                    this.BusDriverCbox = BusDriverCbox!;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 30),
          ClientSignUp(),
        ],
      ),
    );
  }
}
