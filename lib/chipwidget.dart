import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Chip(),
    debugShowCheckedModeBanner: false,));
}
class Chip extends StatelessWidget {
  var names = ["vegetables","fruits","Exotic","Freshcuts"];
  var index;
  var label;

  Chip({this.index, this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.zero,
        width: double.infinity,
        height: 50,
        color:Colors.blue,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Chip(
              label: Text(names[index]),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 10);
          },
          itemCount: names.length,
        ));

  }
}