import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/googleMaps.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 64),
              // ignore: sized_box_for_whitespace
              child: Container(
                  height: 200, child: Image.asset('assets/images/logo.png')),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32, left: 80, right: 80),
              child: Text("Elije la opción que quieras",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "PCRegular", fontSize: 40)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                width: size.width * 0.8,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MapPages()));
                    },
                    child: const Text(
                      "Encuentranos",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "RSV",
                          fontSize: 30,
                          color: Color(0xff92CAE2)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black, width: 2),
                    color: const Color(0xff92CAE2)),
                width: size.width * 0.8,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Reservas",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "RSV", fontSize: 30, color: Colors.white),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                width: size.width * 0.8,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Nosotros",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "RSV",
                          fontSize: 30,
                          color: Color(0xff92CAE2)),
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
