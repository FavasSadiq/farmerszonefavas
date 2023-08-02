import 'package:farmerszone/screenA.dart';
import 'package:flutter/material.dart';
import 'screenB.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenA(), // Set ScreenA as the initial screen
    );
  }
}