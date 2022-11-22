import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pasticceria_app/src/widgets/back.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({super.key});

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  List<PickedFile> images = [];
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
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
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Container(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 110,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Arma tu pedido',
              style: TextStyle(
                  fontFamily: "PCRegular", fontSize: 60, color: Colors.black),
            ),
            Container(
              child: Form(
                  child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          width: size.width / 2.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                hintText: 'Cantidad  personas '),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          width: size.width / 2.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration:
                                const InputDecoration(hintText: 'Sabor '),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          width: size.width / 2.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration:
                                const InputDecoration(hintText: 'Relleno '),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          width: size.width / 2.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                hintText: 'Fecha del evento '),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          width: size.width / 2.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                hintText: '¿Tienes diseño? '),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          width: size.width / 2.5,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                hintText: 'Deseas algo mas '),
                          ))
                    ],
                  ),
                ],
              )),
              //color: Colors.blueAccent,
              //width: 300,
              //height: 300,
            ),
            ListView.builder(
              //padding: EdgeInsets.all(10),
              shrinkWrap: true,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.file(
                  File(images[index].path),
                  width: 80,
                  height: 150,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _optionsDialogBox,
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    onTap: _openCamera,
                    child: const Text('Seleccionar Camara'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    onTap: _openGallery,
                    child: const Text('Seleccionar Galería'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openCamera() async {
    PickedFile? picture = await imagePicker.getImage(
      source: ImageSource.camera,
    );
    Navigator.pop(context);
    setState(() {
      images.add(picture!);
    });
  }

  void _openGallery() async {
    PickedFile? picture = await imagePicker.getImage(
      source: ImageSource.gallery,
    );
    Navigator.pop(context);
    setState(() {
      images.add(picture!);
    });
  }
}
