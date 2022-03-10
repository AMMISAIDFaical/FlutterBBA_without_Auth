// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/company_model.dart';

class CompanyScreenInfo extends StatefulWidget {
  const CompanyScreenInfo({Key? key}) : super(key: key);

  @override
  _CompanyScreenInfoState createState() => _CompanyScreenInfoState();
}

class _CompanyScreenInfoState extends State<CompanyScreenInfo> {
  TextEditingController companyNameTxt = TextEditingController();

  TextEditingController wilayaTxt = TextEditingController();

  TextEditingController cityTxt = TextEditingController();

  TextEditingController adressTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CompanyModel companyProfile = CompanyModel(
        companyNameTxt.text, wilayaTxt.text, cityTxt.text, adressTxt.text);

    return Scaffold(
      appBar: AppBar(
        title: Text("About Company  "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: companyNameTxt,
              decoration: InputDecoration(hintText: 'Company Name'),
            ),
            TextField(
              controller: wilayaTxt,
              decoration: InputDecoration(hintText: 'Wilaya'),
            ),
            TextField(
              controller: cityTxt,
              decoration: InputDecoration(hintText: 'City'),
            ),
            TextField(
              controller: adressTxt,
              decoration: InputDecoration(hintText: 'Phone number'),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_forward_sharp),
              label: Text("fill vehicle informations"),
              onPressed: () {
                Navigator.pushNamed(context, '/vehicle');
              },
            ),
          ],
        ),
      ),
    );
  }
}
