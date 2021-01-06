import 'package:flutter/material.dart';
import 'package:wecker/home_page.dart';
import 'package:wecker/settings_page.dart';

import 'Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  // Klassenvariable
  Widget screen;

  // Home Page nach Einstellungen laden aufrufen
  Future loadData() async {
    await Settings.load();
    screen = HomePage();
    setState(() {});
  }

  // erster AUfruf
  @override
  void initState() {
    loadData();
    screen = CircularProgressIndicator();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wecker',
      debugShowCheckedModeBanner: false,
      // Home Page anzeigen wenn Einstellungen geladen sind
      home: screen,
      builder: (context, child) =>
          MediaQuery(data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true), child: child),
    );
  }
}
