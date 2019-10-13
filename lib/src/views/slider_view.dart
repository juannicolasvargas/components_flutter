import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  SliderView({Key key}) : super(key: key);

  _SliderViewState createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {

  double _valorSlider = 100.0;
  bool _valorCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pagina de slider'),),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            Expanded(child: _crearImagen())
          ],),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      onChanged: (_valorCheck) ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
      value: _valorSlider,
      min: 10.0,
      max: 280.0,
    );
  }

  Widget _crearImagen() {
    return Image(image: NetworkImage('http://www.pngnames.com/files/5/Batman-PNG-Image-Download.png'),
    width: _valorSlider,
    fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      onChanged: (valor){
        setState(() {
          _valorCheck = valor;
        });
      },
      value: _valorCheck,
    );
  }
}