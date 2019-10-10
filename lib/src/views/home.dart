import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/views/alert_view.dart';
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

    return FutureBuilder(
      future:  menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView( children:_crearItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _crearItems(List<dynamic> data, BuildContext context) {
    return data.map( (dynamic item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item['texto']),
            leading: Icon(Icons.accessibility_new, color: Colors.blue),
            trailing: Icon(Icons.arrow_forward, color: Colors.black),
            onTap: () {
              Navigator.pushNamed(context, item['ruta']);
            }
            ),
            Divider()
        ]
      );
    }).toList();
  }
}