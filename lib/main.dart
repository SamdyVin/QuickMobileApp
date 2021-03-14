import 'package:flutter/material.dart';
import 'package:quick/screens/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
        fontFamily: "QuickFont",
        highlightColor: Colors.blue[800],
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
