import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      backgroundColor: Colors.blue,
      unselectedItemColor: Colors.black,
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      selectedItemColor: const Color(0xff92CAE2),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
      ],
    );
  }
}
