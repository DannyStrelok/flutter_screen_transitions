import 'package:flutter/material.dart';
import 'package:flutter_transiciones_pantallas/scr/screens/pagina2.dart';

class Page1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina 1'),
      ),
      body: Center(
        child: Text('pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _crearNavegacion());
        },
        child: Icon(Icons.next_plan_outlined),
      ),
    );
  }

  Route _crearNavegacion() {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            Page2Screen(),
        transitionDuration: Duration(seconds: 2),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curveAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);

          // return SlideTransition(
          //   position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
          //       .animate(curveAnimation),
          //   child: child,
          // );

          // return ScaleTransition(
          //   child: child,
          //     scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation)
          // );

          // return RotationTransition(
          //   child: child,
          //     turns: Tween<double>(begin: 0.9, end: 1).animate(curveAnimation)
          // );
          
          // return FadeTransition(
          //   child: child,
          //     opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation)
          // );

          return RotationTransition(
            child: FadeTransition(
                child: child,
                  opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation)
              ),
              turns: Tween<double>(begin: 0.8, end: 1).animate(curveAnimation)
          );

        });
  }
}
