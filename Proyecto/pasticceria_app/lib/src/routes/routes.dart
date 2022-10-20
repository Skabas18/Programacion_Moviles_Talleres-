import 'package:flutter/cupertino.dart';
import '../pages/Inicio_pages.dart';
import '../pages/login_pages.dart';
import '../pages/menu_pages.dart';
import '../pages/registro_pages.dart';
import '../pages/restorePassword_pages.dart';

final routes = <String, WidgetBuilder>{
  "Inicio": (BuildContext context) => InicioPage(),
  "Menu": (BuildContext context) => MenuPage(),
  "Login": (BuildContext context) => LoginPage(),
  "Restore": (BuildContext context) => RestorePage(),
  "Registro": (BuildContext context) => RegistroPage(),
};
