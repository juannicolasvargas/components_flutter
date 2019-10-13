import 'package:flutter/material.dart';

class InputView extends StatefulWidget {
  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {

  String _nombre;
  String _email;
  String _password;
  String _fecha;
  String _opcionSeleccionada = 'volar';

  TextEditingController _inputField = new TextEditingController();
  List<String> _poderes = ['volar','fuego','rayo','chakra'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ejemplo input'),),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearInputEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDrowndown()
        ]
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Ingrese el nombre',
        labelText: 'Nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        counter: Text('letras ${ _nombre != null ? _nombre.length : 0 }')
      ),

    );
  }

  Widget _crearInputEmail() {
    return TextField(
      onChanged: (valor) =>
      setState(() => _email = valor),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Ingrese el email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),

    );
  }

  _crearPassword() {
    return TextField(
      onChanged: (valor) =>
      setState(() => _password = valor),
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Ingrese el contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),

    );
  }

  Widget _crearFecha( BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputField,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Ingrese el contraseña',
        labelText: 'Fecha',
        suffixIcon: Icon(Icons.calendar_view_day),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectedData(context);
      },

    );
  }

  _selectedData(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime.now(),
      locale: Locale('es', 'ES')
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputField.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> _getPoderes() {
    return _poderes.map((poder){
      return DropdownMenuItem(
        child: Text(poder),
        value: poder,
      );
    }).toList();
  }

  Widget _crearDrowndown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        DropdownButton(
          value: _opcionSeleccionada,
          items: _getPoderes(),
          onChanged: (valor){
            setState(() {
              _opcionSeleccionada = valor;
            });
            print(valor);
          },
        ),
      ],
    );
  }
}