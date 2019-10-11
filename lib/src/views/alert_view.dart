import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pagina de alert'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('presioname'),
          shape: StadiumBorder(),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de texto'),
              FlutterLogo(size: 100.0,)
            ]
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('cancelar'),
              onPressed: ()=> Navigator.of(context).pop() 
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {}
            )
          ],
        );
      }

    );
  }
}