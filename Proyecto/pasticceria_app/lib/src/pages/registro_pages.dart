import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/Inicio_pages.dart';
import 'package:pasticceria_app/src/pages/restorePassword_pages.dart';

import '../widgets/back.dart';
import 'menu_pages.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  late String username;
  late String password;
  final formKey = GlobalKey<FormState>();
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
                Container(
                  child: const Text(
                    'Hola',
                    style: TextStyle(
                        fontFamily: "RSV", fontSize: 50, color: Colors.black),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: Text(
                    "Crea un nuevo usuario para continuar",
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
                  child: Form(
                      key: formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Usuario:"),
                            style: const TextStyle(fontSize: 13),
                            onSaved: (newValue) {
                              username = newValue!;
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.trim().isEmpty ||
                                  value == '0') {
                                return 'error campo nulo';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Celular"),
                            onSaved: (newValue) {
                              password = newValue!;
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.trim().isEmpty ||
                                  value == '0') {
                                return 'error campo nulo';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Contraseña:"),
                            style: const TextStyle(fontSize: 13),
                            onSaved: (newValue) {
                              username = newValue!;
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.trim().isEmpty ||
                                  value == '0') {
                                return 'error campo nulo';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Confirmar Contraseña:"),
                            style: const TextStyle(fontSize: 13),
                            onSaved: (newValue) {
                              username = newValue!;
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.trim().isEmpty ||
                                  value == '0') {
                                return 'error campo nulo';
                              }
                              return null;
                            },
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 2),
                        color: Colors.white),
                    width: size.width * 0.8,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => InicioPage()));
                        },
                        child: const Text(
                          "Registrarse",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "RSV",
                              fontSize: 30,
                              color: Colors.black),
                        )),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/instagram.gif",
                          width: 40,
                        ),
                        Image.asset(
                          "assets/images/whatsapp.gif",
                          width: 40,
                        ),
                        Image.asset(
                          "assets/images/facebook.gif",
                          width: 40,
                        )
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
