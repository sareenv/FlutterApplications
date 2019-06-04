// basic to display the code with material widgetApp widget in parent app.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
            title: Text("I am Super Rich"),
            backgroundColor: Colors.blueGrey[900]),
        backgroundColor: Colors.white,
        body: Center(
            child: Image(
              image: AssetImage("images/sample.jpg")
            ))),
  ));
}
