import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("MapScreen"),
      ),
      body: Center(
        child: Image.asset(
          'assets/icons/google-maps.png',
        //  color: Colors.orange,
          fit: BoxFit.cover,

        ),
      ),
    );
  }
}
