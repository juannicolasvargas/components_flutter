import 'package:flutter/material.dart';

import 'package:components/src/views/home.dart';
import 'package:components/src/views/alert_view.dart';
import 'package:components/src/views/avatar_view.dart';
// import 'package:components/src/views/home_temp.dart'; 

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home' : (BuildContext context) => Home(),
        'alert' : (BuildContext context) => AlertView(),
        'avatar' : (BuildContext context) => AvatarView()
      }
    );
  }
}