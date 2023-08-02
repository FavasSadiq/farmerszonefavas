import 'package:farmerszone/appbar.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen duration
    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen after the splash screen duration
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => App_bar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // You can use any background color or image for your splash screen
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/icons/harvest.png'), // Replace 'logo.png' with your splash screen image
      ),
    );
  }
}

