import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          color: Colors.orange,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search For Vegetables and Fruits",
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
