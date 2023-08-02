import 'package:flutter/material.dart';
void main() {
  runApp(ScreenB());
}
class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: true, // Remove the back button
        title: Text('Screen B'),
        actions: [
          Row(children: [
            Icon(Icons.expand_more),
          ],)
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here For Vegetables and Fruits",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to ScreenA when the button is pressed
            Navigator.pop(context);
          },
          child: Text('Go back to Screen A'),
        ),
      ),
    );
  }
}