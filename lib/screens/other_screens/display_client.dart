// ignore_for_file: prefer_const_constructors, unnecessary_new, unused_local_variable, avoid_print, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/client_model.dart';
import 'package:flutter_application_1/service/client_service.dart';

class DisplayClient extends StatefulWidget {
  const DisplayClient({Key? key}) : super(key: key);

  @override
  _DisplayClientState createState() => _DisplayClientState();
}

class _DisplayClientState extends State<DisplayClient> {
  var clients;
  ClientService cs = ClientService();
  @override
  initState() {
    clients = cs.fetchClients();
    print(clients.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<ClientModel> c;
    return Scaffold(
        appBar: AppBar(
          title: Text("clients"),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: FutureBuilder<List>(
              future: clients, // a previously-obtained Future<String> or null
              builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          child: Card(
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text("Name : " +
                                          snapshot.data![index]['name']),
                                      Text("Email : " +
                                          snapshot.data![index]['email']),
                                      Text("Phone Number : " +
                                          snapshot.data![index]['phoneNumber']),
                                      Text("Client Age : " +
                                          (snapshot.data![index]['age'])
                                              .toString()),
                                    ],
                                  ))),
                        );
                      });
                }
                return Text('wait');
              },
            )));
  }
}
