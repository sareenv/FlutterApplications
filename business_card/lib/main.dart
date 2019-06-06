import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
          child: Container(
            color: Colors.teal,
            height: 100.0,
            width: 380.0,
            margin: EdgeInsets.symmetric(vertical: 140, horizontal: 100),
            padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
              child: Text(
                  "Hello, World Call from India 🇮🇳",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              ),
          ),
        ),
      ),
    );
  }
}
