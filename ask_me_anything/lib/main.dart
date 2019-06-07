import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int result = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ask Me Anything",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue.shade800,
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  result = Random().nextInt(5) + 1;
                });

              },
                child: Image(image: AssetImage("images/ball$result.png"))),
          ),
        ),
      ),
    );
  }
}
