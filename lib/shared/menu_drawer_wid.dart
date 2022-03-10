// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screens/home_screen.dart';
import '../screens/other_screens/bmi_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: BuildMenuItem(context)),  
    );
  }

  List<Widget> BuildMenuItem(BuildContext context) {
    final List<String> menuTitels = [
      'Home',
      'BMI Calculator',
      'Wheather',
      'Training'
    ];
    List<Widget> menuItem = [];

    menuItem.add(DrawerHeader(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Text(
        'Slumerincan bus',
        style: TextStyle(fontSize: 30),
      ),
    ));
    menuTitels.forEach((String element) {
      Widget screen = Container();
      menuItem.add(ListTile(
        title: Text(element, style: TextStyle(fontSize: 18)),
        onTap: () {
          switch (element) {
            case 'Home':
              screen = IntroScreen();
              break;
            case 'BMI Calculator':
              screen = BmiScreen();
              break;
          }
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => screen)
          );
        },
      )
      );
    });
    return menuItem;
  }
}
