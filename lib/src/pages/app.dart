import 'package:flutter/material.dart';

import 'circulo.dart';
import 'cuadrado.dart';
import 'menu.dart';
import 'triangulo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        //todas las rutas de la aplicacion
        '/': (context) => Menu(),
        '/areatriangulo': (context) => Triangulo(),
        '/areacirculo': (context) => Circulo(),
        '/areacuadrado': (context) => Cuadrado(),
      },
    );
  }
}
