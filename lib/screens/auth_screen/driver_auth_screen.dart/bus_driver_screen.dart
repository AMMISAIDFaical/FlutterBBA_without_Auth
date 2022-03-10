// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/driver_model.dart';

class BusDriverScreen extends StatefulWidget {
  const BusDriverScreen({Key? key}) : super(key: key);

  @override
  _BusDriverScreenState createState() => _BusDriverScreenState();
}

class _BusDriverScreenState extends State<BusDriverScreen> {
  TextEditingController firstNameTxt = TextEditingController();
  TextEditingController lastNameTxt = TextEditingController();
  TextEditingController phoneNumTxt = TextEditingController();
  TextEditingController birthDayTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    DriverModel driver = DriverModel(lastNameTxt.text, firstNameTxt.text,
        birthDayTxt.text, phoneNumTxt.text);
    return Scaffold(
      appBar: AppBar(
        title: Text('bus driver space'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Driver Informations',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            TextField(
              controller: firstNameTxt,
              decoration: InputDecoration(hintText: 'First Name'),
            ),
            TextField(
              controller: lastNameTxt,
              decoration: InputDecoration(hintText: 'Last Name'),
            ),
            TextField(
              controller: birthDayTxt,
              decoration: InputDecoration(hintText: 'Birthday'),
            ),
            TextField(
              controller: phoneNumTxt,
              decoration: InputDecoration(hintText: 'Phone number'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/company');
              },
              child: Text('company infos'),
            ),
          ],
        ),
      ),
    );
  }
}
