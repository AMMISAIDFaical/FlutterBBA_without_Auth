// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class VehicleInfoScreen extends StatefulWidget {
  const VehicleInfoScreen({Key? key}) : super(key: key);

  @override
  VehicleStateInofScreen createState() => VehicleStateInofScreen();
}

class VehicleStateInofScreen extends State<VehicleInfoScreen> {
  TextEditingController marqueVehicleTxt = TextEditingController();
  TextEditingController anneeVehicleTxt = TextEditingController();
  TextEditingController modelVehicleTxt = TextEditingController();
  TextEditingController nbrPlacesVehicleTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle informations'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          children: [
            Text('fill your Vehicle informations'),
            SizedBox(height: 25),
            TextField(
              controller: marqueVehicleTxt,
              decoration: InputDecoration(hintText: 'marque'),
            ),
            SizedBox(height: 25),
            TextField(
              controller: modelVehicleTxt,
              decoration: InputDecoration(hintText: 'model'),
            ),
            SizedBox(height: 25),
            TextField(
              controller: anneeVehicleTxt,
              decoration: InputDecoration(hintText: 'anneé'),
            ),
            SizedBox(height: 25),
            TextField(
              controller: nbrPlacesVehicleTxt,
              decoration: InputDecoration(hintText: 'nombre des places'),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'space to upload images !',
                style: TextStyle(fontSize: 20, color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
