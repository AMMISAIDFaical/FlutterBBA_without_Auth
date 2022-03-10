// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screens/from_to_dist_secreenprt.dart';

void main() {
  runApp(const IntroScreen());
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Your Trip'),
      ),
      body: SingleChildScrollView(child: FromToWidget()),
    );
  }
}
