import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/categories/menuIcons.dart';

class newWidget extends StatelessWidget {
  final VoidCallback callback;
  final Widget icon;
  const newWidget({super.key, required this.callback, required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: callback,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width * 0.30,
                height: size.width * 0.30,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff92CAE2)),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: size.width * 0.31,
                width: size.width * 0.31,
                child: MenuIcons(
                  icon: icon,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
