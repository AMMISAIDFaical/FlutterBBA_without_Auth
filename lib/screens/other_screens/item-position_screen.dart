// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore
import 'package:flutter/material.dart';

void main() {
  runApp(ItemPositions());
}

class ItemPositions extends StatelessWidget {
  const ItemPositions({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
        child: ListView(children: [
        ],),
        ),
        appBar: AppBar(
          title: Text('position screen'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Stack(
          children: [
            Positioned(
              bottom:300,
              right: 200,
              top: 300,
              child: MaterialButton(
                color: Colors.grey,
                onPressed: () {},
                child: Text("b 2"),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
