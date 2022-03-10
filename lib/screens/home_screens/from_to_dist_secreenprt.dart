// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/booking_screen/booking_screen.dart';

class FromToWidget extends StatefulWidget {
  const FromToWidget({Key? key}) : super(key: key);

  @override
  _FromToWidgetState createState() => _FromToWidgetState();
}

class _FromToWidgetState extends State<FromToWidget> {
  //inserted data by the user
  TextEditingController fromTxtController = TextEditingController();
  TextEditingController toTxtController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                "Insert depart and arrivel location ",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color:
                        Color.alphaBlend(Colors.blueAccent, Colors.blueAccent)),
              ),
            ),

            /////////// card for "From (depart input by user) " ////////////////
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Card(
                child: Column(
                  children: [
                    Text(
                      'From',
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        controller: fromTxtController,
                        decoration: InputDecoration(hintText: "Depart"),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ////////////// Card for "To (distination input by user) "//////////////

            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Card(
                child: Column(
                  children: [
                    Text('To'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        controller: toTxtController,
                        decoration: InputDecoration(hintText: "Arrivel"),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///////////////////// date input field//////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: DateTimeField(
                  selectedDate: selectedDate,
                  onDateSelected: (DateTime value) {
                    setState(() {
                      selectedDate = value;
                    });
                  }),
            ),

            ///////////////////////////search button/////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: ElevatedButton(
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightGreenAccent)),
                onPressed: () {
                  var arrival = toTxtController.value.text;
                  var depart = fromTxtController.value.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          BookingScreen(depart: depart, arrival: arrival)));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
