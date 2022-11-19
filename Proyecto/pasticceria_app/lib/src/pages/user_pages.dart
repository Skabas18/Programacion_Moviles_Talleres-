import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/Inicio_pages.dart';
import 'package:pasticceria_app/src/pages/login_pages.dart';

import '../widgets/back.dart';

class ProfilePages extends StatefulWidget {
  const ProfilePages({super.key});

  @override
  State<ProfilePages> createState() => _ProfilePagesState();
}

class _ProfilePagesState extends State<ProfilePages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: BackButtonWidget(
                          callback: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/foto.jpg',
                    width: 150,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Text(
                    "Hola Sebastián",
                    style: TextStyle(
                        fontFamily: "PCRegular",
                        fontSize: 60,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 8),
                //Column que contiene las cajas de favoritos

                Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.favorite_outline),
                      ),
                      Text(
                        'Favoritos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "RSV",
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.navigate_next_rounded),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.blue.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.comment),
                      ),
                      Text(
                        'Comentarios',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "RSV",
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.navigate_next_rounded),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.list_alt_outlined),
                      ),
                      Text(
                        'Pedidos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "RSV",
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.navigate_next_rounded),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.blue.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.settings),
                      ),
                      Text(
                        'Configuración',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "RSV",
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.navigate_next_rounded),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => InicioPage()));
                  },
                  child: Container(
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 2),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.logout),
                        ),
                        Text(
                          'Cerrar Sesion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "RSV",
                              fontSize: 30,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(Icons.navigate_next_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
