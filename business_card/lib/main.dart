import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
          child: Column(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: Text("c1",
                  textAlign: TextAlign.center,
                ),
                color: Colors.red,
                padding: EdgeInsets.fromLTRB(10, 40, 30, 10),
              ),

              Container(
                width: 100,
                height: 100,
                child: Text("c2",
                  textAlign: TextAlign.center,
                ),
                color: Colors.teal,
                padding: EdgeInsets.fromLTRB(10, 40, 30, 10),
              ),

              Container(
                width: 100,
                height: 100,
                child: Text("c3",
                  textAlign: TextAlign.center,
                ),
                color: Colors.amberAccent,
                padding: EdgeInsets.fromLTRB(10, 40, 30, 10),
              ),

              Container(
                width: double.infinity,
              )

            ],
          ),
        ),
      ),
    );
  }
}
