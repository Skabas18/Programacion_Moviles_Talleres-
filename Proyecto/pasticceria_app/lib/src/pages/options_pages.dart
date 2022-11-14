import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pasticceria_app/src/widgets/back.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({super.key});

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
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

                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: () {}, child: Text("Hola")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: _optionsDialogBox),
      ),
    );
  }

  void _openCamera() async {
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);
  }

  void _openGallery() async {
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
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
                  // GestureDetector(
                  //   child: new Text('camera: cámara'),
                  //   onTap: () async {
                  //     String picturePath = await Navigator.of(context).push(
                  //         MaterialPageRoute(
                  //             builder: (context) => CameraScreen()));
                  //     Navigator.pop(context);
                  //     print(picturePath);
                  //     setState(() {
                  //       images.add(PickedFile(picturePath));
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
          );
        });
  }
}
