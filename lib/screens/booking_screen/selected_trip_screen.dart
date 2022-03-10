// ignore_for_file: prefer_const_constructors, unnecessary_new, unused_local_variable, avoid_print, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/trip_model.dart';
import 'package:flutter_application_1/screens/booking_screen/selected_bus_screen.dart';
import 'package:flutter_application_1/service/trip_service.dart';

class SelectedTrip extends StatefulWidget {
  final String depart;
  final String arrival;
  const SelectedTrip({Key? key, required this.depart, required this.arrival})
      : super(key: key);
  @override
  _SelectedTripState createState() => _SelectedTripState();
}

class _SelectedTripState extends State<SelectedTrip> {
  late Future<TripModel> futureBus;
  @override
  initState() {
    TripService ts = TripService();
    futureBus = ts.fetchTripByCord(widget.depart, widget.arrival);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your selected Trip"),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: FutureBuilder<TripModel>(
              future: futureBus,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(90.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('depart : ' + (snapshot.data!.departPlace)),
                            Text('time : ' + (snapshot.data!.departTime)),
                            Text('arrival: ' +
                                (snapshot.data!.arrivalPlace).toString()),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SelectedBus(
                                          busId: snapshot.data!.busId)));
                                },
                                child: Text('Confirm'))
                          ],
                        ),
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            )));
  }
}
