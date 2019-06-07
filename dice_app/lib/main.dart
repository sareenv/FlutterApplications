import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DicePage());


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text("Dicee"),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image(
                      image: AssetImage("images/dice$leftDiceNumber.png"),

                    ),
                  ),
                ),
                Expanded(
                    child: FlatButton(
                      onPressed: (){
                        // content.. empty call backback
                        setState(() {
                          rightDiceNumber = Random().nextInt(6) + 1;

                        });

                      },
                      child: Image(
                        image: AssetImage("images/dice$rightDiceNumber.png"),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
