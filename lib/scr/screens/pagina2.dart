import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina 2'),
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Text('pagina 2'),
      ),
    );
  }
}
