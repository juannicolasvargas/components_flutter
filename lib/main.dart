import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:components/src/views/alert_view.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: getRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => AlertView()
        );
      },
    );
  }
}