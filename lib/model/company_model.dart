import 'package:flutter_application_1/model/driver_model.dart';

class CompanyModel {
  String companyName;
  String wilaya;
  String city;
  String adress;
  late List<DriverModel> drivers;
  CompanyModel(this.companyName, this.wilaya, this.city, this.adress);
}
