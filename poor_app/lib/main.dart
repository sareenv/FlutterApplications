import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Poor Application"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image(image: AssetImage("images/img.png")),
      ),
    ),
  ));
}

