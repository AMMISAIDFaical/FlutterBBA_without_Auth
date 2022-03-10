// ignore_for_file: prefer_const_constructors, prefer_const_declarations, unused_local_variable, unnecessary_new
import 'package:flutter/material.dart';

class SayHelloWidget extends StatefulWidget {
  const SayHelloWidget({Key? key}) : super(key: key);

  @override
  _SayHelloWidgetState createState() => _SayHelloWidgetState();
}

class _SayHelloWidgetState extends State<SayHelloWidget> {
  String name = '';
  TextEditingController txtName = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: txtName,
        ),
        ElevatedButton(
          child: Text('hello'),
          onPressed: () {
            setState(() {
              name = txtName.text;
            });
          },
        ),
        Text(
          'hello' + name,
          style: TextStyle(),
        ),
      ],
    );
  }
}
