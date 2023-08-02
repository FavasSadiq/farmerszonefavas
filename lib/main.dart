import 'dart:async';
import 'package:farmerszone/location.dart';
import 'package:farmerszone/potato.dart';
import 'package:farmerszone/searchbar.dart';
import 'package:farmerszone/tomato.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: MySplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
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
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/icons/harvest.png'),
      ),
    );
  }
}
class App_bar extends StatelessWidget {
  // ... App_bar code ...
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
                          "kochi",
                          style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset('assets/icons/orange4.png',
                color: Colors.white,// Replace with your logo image path
                width: 40, // Adjust the width of the logo as needed
                height: 40, // Adjust the height of the logo as needed
              ),
            ),
            title: Text(
              "FARMERZ ZONE",
              style: TextStyle(
                fontFamily: 'Serif',
              //  fontSize: 22,// Use the same font name specified in pubspec.yaml
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
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


          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: .0),
              child: Container(
                width: 500,
                height: 200,
                color: Colors.orange, // Replace with your desired color
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'THERES NO DISH A CARROT CAN WOULDNT FIT IN',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/icons/carrots.png',
                        width: 130,
                        height:130,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          SliverToBoxAdapter(
            child: Wrap(
              children: [
                Image.asset('assets/images/tomato.jpg', width: 130, height: 120),
                Image.asset('assets/images/carrot.jpg', width: 131, height: 120),
                Image.asset('assets/images/pumpkin.jpg', width: 131, height: 120),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                         // child: Image.asset('assets/images/map.jpg', width: 50, height: 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Handle navigation to home screen
              },
            ),
            IconButton(
              icon: Icon(Icons.map),
              onPressed: () {
                // Handle navigation to map screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search_bar()),
                );
                // Handle navigation to search screen
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Handle navigation to account screen
              },
            ),
          ],
        ),
      ),
    );
  }
}