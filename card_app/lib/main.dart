import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("images/me.jpeg"),
                radius: 50,
              ),
              Text(
                "Vinayak Sareen",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 200,
                height: 20,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              
              Text(
                "Full Stack Developer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                  fontFamily: "Source Sans Pro"
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                // padding ?
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.teal.shade900,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+44 77 53 649 372",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade900,
                          fontSize: 20

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                // padding ??
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(

                    children: <Widget>[
                      Icon(Icons.email,
                      size: 30,
                        color: Colors.teal.shade900,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("buggyman026@gmail.com",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],

                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }



}