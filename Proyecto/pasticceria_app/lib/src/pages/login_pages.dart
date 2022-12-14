import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/menu_pages.dart';
import 'package:pasticceria_app/src/pages/restorePassword_pages.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/back.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff92CAE2),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
                child: Container(
                  child: const Text(
                    'Bienvenid@',
                    style: TextStyle(
                        fontFamily: "RSV", fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 64, left: 40, right: 40),
                child: Text(
                  "Inicia sesión con tu usuario y contraseña para poder acceder a todas nuestras opciones",
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 64, left: 32, right: 32),
                child: Form(
                   key: formKey,
                    child: Column(
                  children: <Widget>[
                    TextFormField(
                      autocorrect: false,
                      decoration: const InputDecoration(
                          labelText: "Usuario:",
                          hintText: "test",
                          icon: Icon(Icons.person)),
                      style: const TextStyle(fontSize: 13),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return 'Please enter some text';
                        }
                      },
                    ),
                    TextFormField(
                      autocorrect: false,
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Contraseña",
                          hintText: "******",
                          icon: Icon(Icons.lock)),
                      validator: (value) {
                        print(value);
                        return (value != null && value.length >= 6)
                            ? null
                            : "La contraseña debe ser mayor o igual a 6";
                      },
                    )
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.white),
                  width: size.width * 0.8,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MenuPage()));
                      },
                      child: const Text(
                        "Iniciar sesion",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "RSV",
                            fontSize: 30,
                            color: Colors.black),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: size.width * 0.8,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RestorePage()));
                      },
                      child: const Text(
                        "Olvidaste tú contraseña?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "RSV",
                            fontSize: 15,
                            color: Colors.black),
                      )),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
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
                        launch("https://web.facebook.com/Lapasticceriadilucre");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
