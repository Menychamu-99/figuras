import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área de figuras'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Image.asset('assets/triangulo.png'),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: EdgeInsets.all(20),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/areatriangulo');
            },
            child: Text('Sacar área de un triangulo'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Image.asset('assets/circulo.png'),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            margin: EdgeInsets.all(20),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/areacirculo');
            },
            child: Text('Sacar área de un circulo'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Image.asset('assets/cuadrado.png'),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            margin: EdgeInsets.all(20),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/areacuadrado');
            },
            child: Text('Sacar área de un cuadrado'),
          ),
        ],
      ),
    );
  }
}
