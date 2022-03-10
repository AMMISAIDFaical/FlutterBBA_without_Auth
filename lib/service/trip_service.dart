import 'dart:convert';
import 'package:flutter_application_1/model/trip_model.dart';
import 'package:http/http.dart' as http;

class TripService {
  static String url = "http://10.0.2.2:5000/api/trip";
  Future<List> fetchTrips() async {
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    return responseData;
  }

  Future<TripModel> fetchTripByCord(String depart, String arrive) async {
    final response = await http
        .get(Uri.parse(url + '/GetTripByCord/' + depart + '/' + arrive));
    if (response.statusCode == 200) {
      return TripModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load trip');
    }
  }
  //void addtrip(TripModel trip) async {
  //  http.Response response = await http.get(Uri.parse(url));
  //  List<dynamic> tripMap = jsonDecode(response.body);
  //  List<TripModel> trips = <TripModel>[];
  //  for (var i = 0; i < tripMap.length; i++) {
  //    var t = TripModel.fromJson(tripMap[i]);
  //    trips.add(t);
  //  }
  //  return trips;
  //}
}
