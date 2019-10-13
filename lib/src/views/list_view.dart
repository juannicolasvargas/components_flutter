import 'dart:async';

import 'package:flutter/material.dart';

class ListaView extends StatefulWidget {
  ListaView({Key key}) : super(key: key);

  _ListaViewState createState() => _ListaViewState();
}

class _ListaViewState extends State<ListaView> {

  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();

  _scrollController.addListener((){
    if ( _scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      // _agregar10();
      fechData();
    }
  });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('list view'),),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading()
        ],
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listaNumeros[index];
        print(image);
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300?image=$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }

  void _agregar10() {
    for (var i = 1; i < 15; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);

      setState(() {
        
      });
    }
  }

  Future fechData() async {
    _isLoading = true;
    setState((){});
    final duration = Duration(seconds: 3);
    return new Timer(duration, respuestaHttp);
  }
    
  void respuestaHttp() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 220)
      );
    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 20.0)
        ],
      );
    } else{
      return Container();
    }
  }
}