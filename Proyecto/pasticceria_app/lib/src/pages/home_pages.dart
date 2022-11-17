import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/carousel.dart';
import '../categories/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePagges extends StatefulWidget {
  const HomePagges({super.key});

  @override
  State<HomePagges> createState() => _HomePaggesState();
}

class _HomePaggesState extends State<HomePagges> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
              child: CupertinoSearchTextField(
                borderRadius: BorderRadius.circular(20),
              ),
            )),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text("Mas popular ",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "RSV", fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, right: 20, left: 20),
              child: CarouselSebastian(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Elije que quieres pedir",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "RSV", fontSize: 22)),
            ),
            Padding(
              // padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
              padding: const EdgeInsets.all(0),
              child: Container(
                color: Colors.transparent,
                width: size.width,
                height: 340,
                child: const Categories(),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
