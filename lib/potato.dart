import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PotatoScreen extends StatelessWidget {
  const PotatoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Tomato"),
      ),
      body: Center(
        child: Image.asset(
          'assets/icons/potato.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
