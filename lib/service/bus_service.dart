// ignore_for_file: deprecated_member_use, unused_local_variable, unnecessary_new, prefer_collection_literals

import 'dart:convert';
import 'package:flutter_application_1/model/bus_model.dart';
import 'package:http/http.dart' as http;

class BusService {
  static String url = 'http://10.0.2.2:5000/api/bus';

  Future<List> fetchBuses() async {
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    return responseData;
  }

  Future<BusModel> fetchBusById(int id) async {
    final response = await http.get(Uri.parse(url + '/' '$id'));
    if (response.statusCode == 200) {
      return BusModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load trip');
    }
    // }

    //void addClient(ClientModel client) async {
    //  http.Response response = await http.get(Uri.parse(url));
    //  List<dynamic> clientMap = jsonDecode(response.body);
    //  List<ClientModel> clients = <ClientModel>[];
    //  for (var i = 0; i < clientMap.length; i++) {
    //    var c = ClientModel.fromJson(clientMap[i]);
    //    clients.add(c);
    //  }
    //  return clients;
    //}
  }
}
