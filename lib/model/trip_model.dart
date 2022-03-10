//import 'dart:convert';

class TripModel {
  final int id;
  final String departPlace;
  final String arrivalPlace;
  final String departTime;
  final int numberPlaces;
  final String commentaire;
  final int note;
  final int busId;
  final int stopId;
  TripModel(
      this.departPlace,
      this.arrivalPlace,
      this.departTime,
      this.numberPlaces,
      this.commentaire,
      this.note,
      this.busId,
      this.id,
      this.stopId);
  TripModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        departPlace = json['depart'],
        arrivalPlace = json['arrivel'],
        departTime = json['dateDepart'],
        numberPlaces = json['nbrPlaces'],
        stopId = json['stopId'],
        commentaire = json['commentaire'],
        note = json['note'],
        busId = json['busId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'depart': departPlace,
        'arrivel': arrivalPlace,
        'dateDepart': departTime,
        'nbrPlaces': numberPlaces,
        'stopId': stopId,
        'note': note,
        'busId': busId
      };
}
