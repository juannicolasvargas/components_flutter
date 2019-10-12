import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerView extends StatefulWidget {
  @override
  _AnimatedContainerViewState createState() => _AnimatedContainerViewState();
}

class _AnimatedContainerViewState extends State<AnimatedContainerView> {

  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          curve: Curves.linear,
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          )
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: _cambiarForma
        ),
    );
  }

  void _cambiarForma() {

    final ramdon = Random();

    setState(() {
      _color = Color.fromRGBO(
        ramdon.nextInt(255),
        ramdon.nextInt(255),
        ramdon.nextInt(255),
        1
      );

      _width = ramdon.nextInt(300).toDouble();
      _heigth = ramdon.nextInt(300).toDouble();
      _borderRadius = BorderRadius.circular(ramdon.nextInt(100).toDouble());
    });
  }

}