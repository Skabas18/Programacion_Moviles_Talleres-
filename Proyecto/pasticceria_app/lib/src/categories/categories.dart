import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/categories/newWidget.dart';
import 'package:pasticceria_app/src/pages/options_pages.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(0),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 3,
        children: <Widget>[
          newWidget(
            callback: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const OptionsList()));
            },
            icon: Image.asset(
              "assets/images/cake.png",
              width: 40,
            ),
          ),
          newWidget(
            callback: () {},
            icon: Image.asset(
              "assets/images/cupcake.png",
              width: 40,
            ),
          ),
          newWidget(
            callback: () {},
            icon: Image.asset(
              "assets/images/desing.png",
              width: 40,
            ),
          ),
          newWidget(
            callback: () {},
            icon: Image.asset(
              "assets/images/cokies.png",
              width: 40,
            ),
          ),
          newWidget(
            callback: () {},
            icon: Image.asset(
              "assets/images/candies.png",
              width: 40,
            ),
          ),
          newWidget(
            callback: () {},
            icon: Image.asset(
              "assets/images/celebration.png",
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
