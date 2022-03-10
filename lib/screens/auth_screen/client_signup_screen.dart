// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ClientSignUp extends StatefulWidget {
  const ClientSignUp({Key? key}) : super(key: key);

  @override
  _ClientSignUpState createState() => _ClientSignUpState();
}

class _ClientSignUpState extends State<ClientSignUp> {
  TextEditingController FirstNameTxt = TextEditingController();
  TextEditingController LastNameTxt = TextEditingController();
  TextEditingController dateNaissTxt = TextEditingController();
  TextEditingController phoneNumTxt = TextEditingController();

  var FirstNameTxtHint = "First Name";
  var LastNameTxtHint = "Last Name";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: FirstNameTxt,
            decoration: InputDecoration(
              hintText: FirstNameTxtHint,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: LastNameTxt,
            decoration: InputDecoration(
              hintText: LastNameTxtHint,
            ),
          ),
          SizedBox(height: 20),
          IntlPhoneField(
            showCountryFlag: true,
            controller: phoneNumTxt,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: Text('Submit as Passanger'),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Additional bus driver informations'),
            onPressed: () {
              Navigator.pushNamed(context, '/busDriver');
            },
          )
        ],
      ),
    );
  }
}
