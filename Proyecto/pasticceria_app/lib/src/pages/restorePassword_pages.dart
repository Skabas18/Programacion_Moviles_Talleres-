import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/widgets/back.dart';
import 'package:url_launcher/url_launcher.dart';

class RestorePage extends StatefulWidget {
  const RestorePage({super.key});

  @override
  State<RestorePage> createState() => _RestorePageState();
}

class _RestorePageState extends State<RestorePage> {
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
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Container(
                    child: const Text(
                      'Recuperar contraseña',
                      style: TextStyle(
                          fontFamily: "RSV", fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 64, left: 40, right: 40),
                  child: Text(
                    "Selecciona uno de los siguientes metodos para recuperar contraseña",
                    style: TextStyle(
                        fontFamily: "RSV", fontSize: 15, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
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
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(Icons.email),
                        ),
                        Text(
                          'Email',
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
                const SizedBox(
                  height: 32,
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
                        child: Icon(Icons.phone_android),
                      ),
                      Text(
                        'Celular',
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
                // ignore: sized_box_for_whitespace
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "assets/images/instagram.gif",
                          ),
                          iconSize: 40,
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(
                                "https://www.instagram.com/lapasticceriadilucre/");
                          },
                        ),
                        IconButton(
                          icon: Image.asset(
                            "assets/images/whatsapp.gif",
                          ),
                          iconSize: 40,
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch("https://wa.me/573147099425");
                          },
                        ),
                        IconButton(
                          icon: Image.asset(
                            "assets/images/facebook.gif",
                          ),
                          iconSize: 40,
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(
                                "https://web.facebook.com/Lapasticceriadilucre");
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
