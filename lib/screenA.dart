import 'package:farmerszone/appbar.dart';
import 'package:farmerszone/location.dart';
import 'package:farmerszone/potato.dart';
import 'package:farmerszone/screenB.dart';
import 'package:farmerszone/tomato.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ScreenA());
}
class ScreenA extends StatefulWidget {
  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
        // ... existing code ...
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the desired page when "Tomato" chip is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TomatoScreen()),
                    );
                  },
                  child: Chip(label: Text('Tomato')),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the desired page when "Potato" chip is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PotatoScreen()),
                    );
                  },
                  child: Chip(label: Text('Potato')),
                ),
                Chip(label: Text('Carrot')),
                Chip(label: Text('Apple')),
                Chip(label: Text('Mango')),
                // Add more chips as needed
              ],
            ),
          ),
          // Add a single color box with adjustable size
          Container(
            color: Colors.blue, // Replace with your desired color
            width: 400, // Adjust the width of the box as needed
            height: 200, // Adjust the height of the box as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'THERE\'S NO DISH A CARROT WOULDN\'T FIT!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Step 1: Choose your favorite vegetable',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Step 2: Prepare the ingredients',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Step 3: Cook and enjoy!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Image.asset(
                    "assets/icons/carrot.png",// Replace with your desired logo icon
                    color: Colors.white,
                   // size: 40.0, // Adjust the size of the logo as needed
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}