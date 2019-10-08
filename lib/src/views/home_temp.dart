import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final listExamples = ['uno','dos','tres','cuatro','cinco','seis','siete','ocho'];

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: appBarTemp(),
      body: ListView(
        children: _crearLista(),
      ),
    );
    return scaffold;
  }

  Widget appBarTemp() {
    return AppBar(title: Text('Header'));
  }

  List <Widget> _crearLista() {
    return listExamples.map((item) {
      return Column(
        children: <Widget>[
          _crearListTitle(item),
          Divider()
        ],
      );
    }).toList();
  }

  Widget _crearListTitle(String text) {
    return ListTile(
      title: Text(text),
      subtitle: Text('Esto es una prueba'),
      leading: Icon(Icons.perm_camera_mic),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){},
      );
  }
}