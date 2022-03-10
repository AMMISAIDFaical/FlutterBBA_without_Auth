// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names, unused_label, constant_identifier_names, prefer_adjacent_string_concatenation, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/menu_drawer_wid.dart';
import 'package:flutter_application_1/shared/menu_navigation_wid.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  static const double GlobfontSize = 18;
  String result = '';
  bool isMetric = false;
  bool isImperial = true;
  late List<bool> isSelectedValues;
  double? height;
  double? weight;
  TextEditingController heightTxt = TextEditingController();
  TextEditingController weightText = TextEditingController();
  String heightTxtHint = '';
  String weightTxtHint = '';

  @override
  void initState() {
    isSelectedValues = [isMetric, isImperial];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    heightTxtHint =
        'please insert height ' + ((isMetric) ? 'meters' : 'inches');
    weightTxtHint =
        'please insert weight ' + ((isImperial) ? 'kilos' : 'pounds');
    return Scaffold(
      appBar: AppBar(
        title: Text("i am the bmi screeen"),
      ),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuNavigation(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ToggleButtons(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child:
                      Text('Metric', style: TextStyle(fontSize: GlobfontSize)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Imperial',
                      style: TextStyle(fontSize: GlobfontSize)),
                ),
              ],
              onPressed: toggleMesure,
              isSelected: isSelectedValues,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              controller: heightTxt,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: heightTxtHint,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              controller: weightText,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: weightTxtHint,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              onPressed: () {
                findBMI();
              },
              child: Text(
                'Calculate button',
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black26),
            child: Text(
              result,
              style: TextStyle(fontSize: GlobfontSize),
            ),
          ),
        ]),
      ),
    );
  }

  void toggleMesure(value) {
    if (value == 0) {
      isMetric = true;
      isImperial = false;
    } else {
      if (value == 1) {
        isImperial = true;
        isMetric = false;
      }
    }
    setState(() {
      isSelectedValues = [isMetric, isImperial];
    });
  }

  void findBMI() {
    double bmi = 0;
    double heightValue = double.tryParse(heightTxt.text) ?? 0;
    double weightValue = double.tryParse(weightText.text) ?? 0;
    if (isMetric) {
      bmi = weightValue / (heightValue * heightValue);
    } else {
      bmi = weightValue * 703 / (heightValue * heightValue);
    }
    setState(() {
      result = 'your bmi is ' + bmi.toStringAsFixed(2);
    });
  }
}
