import 'package:flutter/material.dart';
import 'package:wecker/home_page.dart';
import 'package:wecker/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wecker',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
