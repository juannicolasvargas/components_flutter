import 'package:flutter/material.dart';


class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('esta en una card'),
      ),
      body: ListView(children: <Widget>[
        _cardTipo1(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
      ],
      padding: EdgeInsets.all(10),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 100.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('hola padrecito'),
          subtitle: Text('que se dice padrecito jndnsjfndfjndfjndjfdnjfnj que se dice que se narra que se comenta socio perro')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(child: Text('cancelar'), onPressed: () {}),
              FlatButton(child: Text('ok'), onPressed: (){},),
            ],
          )
      ],),
    );
  }

  Widget _cardTipo2() {
    final card =  Container(
      child: Column(children: <Widget>[
        FadeInImage(
          image: NetworkImage('https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMzk2fQ&w=1000&q=80'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        Container(child: Text('que se dice'), padding: EdgeInsets.all(10.0),)
      ]) ,
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
            )
        ],
        // color: Colors.red,
        ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}