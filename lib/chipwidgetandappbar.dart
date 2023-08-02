import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Farmers Product'),
          bottom: AppBar(backgroundColor: Colors.blue,
    elevation: 0,
    title: Container(width: double.infinity,
    height: 40,
    color: Colors.white,
    child: TextField(decoration: InputDecoration(
    hintText: "Search For Vegitables and Fruits",
    prefixIcon: Icon(Icons.search),
        ),
    ),
    ),
          ),
        ),
      //
        body: Center(
        child: Chip(
            elevation: 20,
            padding: EdgeInsets.all(8),
            backgroundColor: Colors.greenAccent[100],
          //  shadowColor: Colors.black,
            avatar: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/apple.png")),
            label: Text(
              'Farmers Product',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}