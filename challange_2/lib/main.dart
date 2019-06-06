import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),

              Container(
                color: Colors.blue,

                width: 100,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.teal,
      ),
    );
  }
}