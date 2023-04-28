import 'package:flutter/material.dart';

import 'package:parallax_flutter/screeens/homescreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parallax",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const  Color(0xffffaf00)
      ),
      home: MyHomePage(),
    );
  }
}
