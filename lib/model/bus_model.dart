class BusModel {
  final int id;
  final String model;
  final String marque;
  final String year;
  final int nbrSeats;
  final List busImg;
  final int companyId;
  BusModel(this.id, this.model, this.marque, this.year, this.nbrSeats,
      this.companyId, this.busImg);
  BusModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        model = json['model'],
        marque = json['marque'],
        year = json['year'],
        nbrSeats = json['nbrSeats'],
        companyId = json['companyId'],
        busImg = json['images'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'model': model,
        'marque': marque,
        'year': year,
        'nbrSeats': nbrSeats,
        'images': busImg,
        'companyId': companyId
      };
}
