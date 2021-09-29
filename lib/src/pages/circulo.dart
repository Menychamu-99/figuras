import 'dart:math';

import 'package:flutter/material.dart';

class Circulo extends StatefulWidget {
  Circulo({Key? key}) : super(key: key);

  @override
  _CirculoState createState() => _CirculoState();
}

class _CirculoState extends State<Circulo> {
  double radio = 0.0;
  double areaCir = 0.0;
  double pi = 3.1415926535897932;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área de un Círculo'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          _radio(),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text('Calcular Área'),
          ),
          Divider(),
          _area(radio)
        ],
      ),
    );
  }

  Widget _radio() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Radio del Círculo',
          labelText: 'Radio del Círculo',
          helperText: 'Ingresa el radio',
          suffixIcon: Icon(Icons.mode_edit_rounded)),
      onChanged: (valor) {
        radio = double.parse(valor);
      },
    );
  }

  Widget _area(double r) {
    areaCir = (pi * (pow(r, 2)));
    return ListTile(
      title: Text('El área del Círculo es: $areaCir'),
    );
  }
}
