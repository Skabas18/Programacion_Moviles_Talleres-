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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  color: Colors.amber,
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
            Container(
              color: Colors.blueAccent,
              width: 300,
              height: 300,
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
        child: Icon(Icons.add),
        onPressed: _optionsDialogBox,
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
                    child: Text('image_picker: Cámara'),
                    onTap: _openCamera,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: new Text('image_picker: Galería'),
                    onTap: _openGallery,
                  ),
                  Padding(
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
