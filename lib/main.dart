import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wax_app/providers/settings_provider.dart';
import 'package:wax_app/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          create: (BuildContext context) => SettingsProvider(),
          child: MaterialApp(
        title: 'Wax App',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrangeAccent
        ),
        home: Home(),
      ),
    );
  }
}

