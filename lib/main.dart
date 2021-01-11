import 'package:flutter/material.dart';
import 'package:flutter_transiciones_pantallas/scr/screens/pagina1_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Page1Screen(),
    );
  }
}
