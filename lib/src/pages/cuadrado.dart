import 'package:flutter/material.dart';

class Cuadrado extends StatefulWidget {
  Cuadrado({Key? key}) : super(key: key);

  @override
  _CuadradoState createState() => _CuadradoState();
}

class _CuadradoState extends State<Cuadrado> {
  double base = 0.0;
  double altura = 0.0;
  double areaC = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área de un Cuadrado'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          _base(),
          SizedBox(
            height: 15.0,
          ),
          _altura(),
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
          _area(base, altura)
        ],
      ),
    );
  }

  Widget _base() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Base del cuadrado',
          labelText: 'Base del cuadrado',
          helperText: 'Ingresa la base',
          suffixIcon: Icon(Icons.mode_edit_rounded)),
      onChanged: (valor) {
        base = double.parse(valor);
      },
    );
  }

  Widget _altura() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Altura del Cuadrado',
          labelText: 'Altura del Cuadrado',
          helperText: 'Ingresa la altura',
          suffixIcon: Icon(Icons.mode_edit_rounded)),
      onChanged: (valor) {
        altura = double.parse(valor);
      },
    );
  }

  Widget _area(double b, double h) {
    areaC = b * h;
    return ListTile(
      title: Text('El área del cuadrado es: $areaC'),
    );
  }
}
