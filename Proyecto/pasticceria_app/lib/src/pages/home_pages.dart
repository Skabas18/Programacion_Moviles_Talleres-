import 'package:flutter/material.dart';
import '../categories/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class HomePagges extends StatefulWidget {
  const HomePagges({super.key});

  @override
  State<HomePagges> createState() => _HomePaggesState();
}

class _HomePaggesState extends State<HomePagges> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Text("Home page"),
    );
  }
}
