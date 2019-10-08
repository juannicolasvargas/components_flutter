import 'package:flutter/material.dart';

import 'package:components/src/views/home.dart';
// import 'package:components/src/views/home_temp.dart'; 

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home()
    );
  }
}