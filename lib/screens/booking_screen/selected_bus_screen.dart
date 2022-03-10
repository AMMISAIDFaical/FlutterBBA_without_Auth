// ignore_for_file: prefer_const_constructors, unnecessary_new, unused_local_variable, avoid_print, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/bus_model.dart';
import 'package:flutter_application_1/service/bus_service.dart';

class SelectedBus extends StatefulWidget {
  final int busId;
  const SelectedBus({Key? key, required this.busId}) : super(key: key);
  @override
  _SelectedBusState createState() => _SelectedBusState();
}

class _SelectedBusState extends State<SelectedBus> {
  late Future<BusModel> futureBus;
  @override
  initState() {
    BusService bs = BusService();
    futureBus = bs.fetchBusById(widget.busId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Available Bus"),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: FutureBuilder<BusModel>(
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
                            Text('bus id is  : ' +
                                (snapshot.data!.id).toString()),
                            Text('model : ' + (snapshot.data!.model)),
                            Text('marque : ' + (snapshot.data!.marque)),
                            Text('year : ' + (snapshot.data!.year)),
                            Text('seats number : ' +
                                (snapshot.data!.nbrSeats).toString())
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
