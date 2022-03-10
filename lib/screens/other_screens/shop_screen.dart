// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/other_screens/shop_secreen_content.dart';
import 'package:flutter_application_1/shared/menu_drawer_wid.dart';
import 'package:flutter_application_1/shared/menu_navigation_wid.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("the shop")),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuNavigation(),
        body: SayHelloWidget(),
      );
  }
}
