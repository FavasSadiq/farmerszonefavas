import 'dart:async';

import 'package:farmerszone/location.dart';
import 'package:farmerszone/potato.dart';
import 'package:farmerszone/tomato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: App_bar(),
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


class App_bar extends StatelessWidget {
  const App_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange,
            floating: false,
            pinned: false,
            actions: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the desired page when "Tomato" chip is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapScreen()),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          "kochi, kerala",
                          style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            title: Text(
              "FARMERS ZONE",
              style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
            ),
            bottom: AppBar(
              backgroundColor: Colors.orange,
              automaticallyImplyLeading: false,
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search For Vegetables and Fruits",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
