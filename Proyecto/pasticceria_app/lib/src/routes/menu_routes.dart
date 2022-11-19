import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/aboutUs_pages.dart';
import 'package:pasticceria_app/src/pages/googleMaps.dart';

import '../pages/home_pages.dart';
import '../pages/user_pages.dart';

class MenuRoutes extends StatefulWidget {
  final int index;
  const MenuRoutes({Key? key, required this.index}) : super(key: key);

  @override
  State<MenuRoutes> createState() => _MenuRoutesState();
}

class _MenuRoutesState extends State<MenuRoutes> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const HomePagges(),
      const AboutUs(),
      const ProfilePages(),
    ];
    return myList[widget.index];
  }
}
