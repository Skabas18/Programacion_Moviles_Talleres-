import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/botton_navigation.dart';
import 'package:pasticceria_app/src/pages/home_pages.dart';

import '../routes/menu_routes.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int index = 0;
  BNavigator? myButtonNavigation;
  @override
  void initState() {
    myButtonNavigation = BNavigator(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: myButtonNavigation,
      body: MenuRoutes(index: index),
    ));
  }
}
