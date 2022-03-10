// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthentificationScreen extends StatefulWidget {
  const AuthentificationScreen({Key? key}) : super(key: key);

  @override
  State<AuthentificationScreen> createState() => _AuthentificationScreenState();
}

class _AuthentificationScreenState extends State<AuthentificationScreen> {
  TextEditingController emailTxt = TextEditingController();
  TextEditingController phoneTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Welcome To Bus Booking App', style: TextStyle(fontSize: 18)),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 0),
              child: TextField(
                controller: emailTxt,
                decoration: InputDecoration(
                  hintText: "example@email.com",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 0),
              child: TextField(
                controller: phoneTxt,
                decoration: InputDecoration(
                  hintText: "Phone number",
                ),
              ),
            ),

            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightGreenAccent))),
            /////start of  socail media the sign in layout///////////////////

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook), onPressed: () {}),
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.google), onPressed: () {}),
              ],
            ),

            //////////////////end of the socail media layout/////////////////
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  "tap here to Create an Account ",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue))),
          ],
        ),
      ),
    );
  }
}
