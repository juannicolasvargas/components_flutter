import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:components/src/views/alert_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES')
      ],
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