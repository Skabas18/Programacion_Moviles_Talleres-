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
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.lightBlue),
                          child: Text(
                            'Hola profe $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Elije que quieres pedir",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "RSV", fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
              child: Container(
                color: Colors.transparent,
                width: size.width,
                height: 280,
                child: const Categories(),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
