// ignore_for_file: deprecated_member_use, unused_local_variable, unnecessary_new, prefer_collection_literals
import 'dart:convert';
import 'package:flutter_application_1/model/Reservation_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ReservationService {
  static String url = 'http://10.0.2.2:5000/api/reservation';

  Future<List<ReservationModel>> fetchReservations() async {
    Response response = await http.get(Uri.parse(url));
    var reservation = json.decode(response.body);
    List<ReservationModel> list = <ReservationModel>[];
    for (var item in reservation) {
      list.add(ReservationModel.fromJson(item));
    }
    return list;
  }

  static Future<ReservationModel> fetchReservByTripId(int tripId) async {
    url = url + '/GetReservByTripId/' + '$tripId';
    Response response = await http.get(Uri.parse(url));
    var reservation = json.decode(response.body);
    var c = (ReservationModel.fromJson(reservation));
    return c;
  }

  static Future fetchReservByClientId(int clientId) async {
    url = url + '/GetResrvByClientId/' + '$clientId';
    Response response = await http.get(Uri.parse(url));
    var reservation = json.decode(response.body);
    var c = ReservationModel.fromJson(reservation);
    return c;
  }

  //void addReservation(ReservationModel reservation) async {
  //  http.Response response = await http.get(Uri.parse(url));
  //  List<dynamic> ReservationMap = jsonDecode(response.body);
  //  List<ReservationModel> Reservations = <ReservationModel>[];
  //  for (var i = 0; i < ReservationMap.length; i++) {
  //    var c = ReservationModel.fromJson(ReservationMap[i]);
  //    Reservations.add(c);
  //  }
  //  return Reservations;
  //}
}
