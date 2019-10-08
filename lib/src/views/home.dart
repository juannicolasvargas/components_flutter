import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('comonentes')),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    print(menuProvider.opciones);
    return ListView( children:_crearItems());
  }

  List <Widget> _crearItems() {
    return [
      ListTile(title: Text('hola mundo')),
      ListTile(title: Text('hola mundo')),
      ListTile(title: Text('hola mundo'))
    ];
  }
}