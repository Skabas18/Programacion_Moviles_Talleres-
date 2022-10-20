import 'package:flutter/material.dart';

class MenuIcons extends StatelessWidget {
  final Widget icon;
  const MenuIcons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: Center(child: icon),
      ),
    );
  }
}
