import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/pages/login_pages.dart';
import 'package:pasticceria_app/src/pages/registro_pages.dart';

class InicioPage extends StatefulWidget {
  static String id = 'Login';

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 126),
              // ignore: sized_box_for_whitespace
              child: Container(
                  height: 250, child: Image.asset('assets/images/logo.png')),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 60.5, left: 80, right: 80),
              child: Text("Un sabor artesanal hecho en casa",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "PCRegular", fontSize: 40)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black, width: 2),
                    color: const Color(0xff92CAE2)),
                width: size.width * 0.8,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistroPage()));
                    },
                    child: const Text(
                      "Registro",
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
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      "Inicio de Sesión",
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
