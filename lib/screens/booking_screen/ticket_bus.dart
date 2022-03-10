// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, type_init_formals

import 'package:flutter/material.dart';

class Ticket extends StatefulWidget {
  final String date;
  final String from;
  final String status;
  final String to;
  const Ticket(
      {Key? key,
      required String this.date,
      required String this.from,
      required String this.status,
      required String this.to})
      : super(key: key);

  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Submit the trip")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(children: [
              Text(
                "Submit the Trip",
                style: TextStyle(fontSize: 25, color: Colors.deepOrange),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 400,
                  height: 230,
                  child: Card(
                      color: Colors.amber,
                      child: ListView(children: <Widget>[
                        DataTable(
                          columns: [
                            DataColumn(
                                label: Text(
                              'DATE',
                              style: TextStyle(fontSize: 20),
                            )),
                            DataColumn(
                                label: Text(
                              widget.date.substring(0, 11),
                              style: TextStyle(fontSize: 20),
                            )),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text(
                                'Time',
                                style: TextStyle(fontSize: 20),
                              )),
                              DataCell(Text(
                                widget.date.substring(
                                  11,
                                  widget.date.length,
                                ),
                                style: TextStyle(fontSize: 20),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Text(
                                'FROM',
                                style: TextStyle(fontSize: 20),
                              )),
                              DataCell(Text(
                                widget.from,
                                style: TextStyle(fontSize: 20),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Text(
                                'TO',
                                style: TextStyle(fontSize: 20),
                              )),
                              DataCell(Text(
                                widget.to,
                                style: TextStyle(fontSize: 20),
                              )),
                            ]),
                          ],
                        ),
                      ])),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.cancel),
                    label: Text(
                      'Cancel ',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.check),
                      label: Text(
                        'Confirm',
                        style: TextStyle(fontSize: 25),
                      )),
                ],
              )
            ]),
          ),
        ));
  }
}
