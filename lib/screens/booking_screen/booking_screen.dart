// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/trip_model.dart';
import 'package:flutter_application_1/screens/booking_screen/img_screen.dart';
import 'package:flutter_application_1/screens/booking_screen/ticket_bus.dart';
import 'package:flutter_application_1/service/trip_service.dart';

class BookingScreen extends StatefulWidget {
  final String depart;
  final String arrival;
  const BookingScreen({Key? key, required this.depart, required this.arrival})
      : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int? _value;
  double price = 0;
  late Future<TripModel> futureTrip;
  @override
  initState() {
    TripService bs = TripService();
    futureTrip = bs.fetchTripByCord(widget.depart, widget.arrival);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        appBar: AppBar(
          title: Text('book your trip !'),
        ),
        body: FutureBuilder<TripModel>(
          future: futureTrip,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SlideShowBusImage(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "depart : " +
                            snapshot.data!.departPlace +
                            "   Arrivel : " +
                            snapshot.data!.arrivalPlace,
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Wrap(
                        children: List<Widget>.generate(
                          5,
                          (int index) {
                            return ChoiceChip(
                              label: Text('Seats $index'),
                              selected: _value == index,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? index : null;
                                  switch (index) {
                                    case 1:
                                      price = 1 * 200;
                                      break;
                                    case 2:
                                      price = 2 * 200;
                                      break;
                                    case 3:
                                      price = 3 * 200;
                                      break;
                                    case 4:
                                      price = 4 * 200;
                                      break;
                                    default:
                                      price = 0;
                                  }
                                });
                              },
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text('the price to be payed is $price £',
                          style: TextStyle(fontSize: 25, color: Colors.green)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ticket(
                                  from: snapshot.data!.departPlace,
                                  to: snapshot.data!.arrivalPlace,
                                  date: snapshot.data!.departTime,
                                  status: 'pending')));
                        },
                        child: Text('Get Your tickt !',
                            style:
                                TextStyle(fontSize: 30, color: Colors.black)),
                      ),
                    )
                  ]));
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return Center(
                child: const CircularProgressIndicator(
              color: Colors.green,
              semanticsLabel: 'data',
            ));
          },
        ));
  }
}
