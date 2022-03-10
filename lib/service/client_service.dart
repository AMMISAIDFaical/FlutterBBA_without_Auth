// ignore_for_file: deprecated_member_use, unused_local_variable, unnecessary_new, prefer_collection_literals, avoid_print
import 'dart:convert';
import 'package:flutter_application_1/model/client_model.dart';
import 'package:http/http.dart' as http;

class ClientService {
  static String url = "http://10.0.2.2:5000/api/clients";
  Future<List> fetchClients() async {
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    return responseData;
  }

  Future<ClientModel> fetchClientById(int id) async {
    url = url + '/GetById/' + '$id';
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    var c = (ClientModel.fromJson(responseData));
    return c;
  }

  // static Future fetchClientByEmail(String email) async {
  //   url = url + '/GetByEmail/' + email;
  //   Response response = await http.get(Uri.parse(url));
  //   var client = json.decode(response.body);
  //   var c = ClientModel.fromJson(client);
  //   return c;
  // }
//
  // static Future fetchClientByPh(String phoneNumber) async {
  //   url = url + '/GetByPh/' + phoneNumber;
  //   Response response = await http.get(Uri.parse(url));
  //   var client = json.decode(response.body);
  //   var c = ClientModel.fromJson(client);
  //   return c;
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
