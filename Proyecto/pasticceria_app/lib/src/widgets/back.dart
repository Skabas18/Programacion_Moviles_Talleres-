import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final VoidCallback callback;

  const BackButtonWidget({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        width: 370,
        height: 30,
        color: Colors.transparent,
        child: const Align(
          alignment: Alignment.bottomLeft,
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
