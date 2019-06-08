import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    FlatButton generateButtons(String sound){
      FlatButton button = new FlatButton(onPressed: (){
        AudioCache player = new AudioCache();
        player.play(sound);
      }, child: null);
      return button;
    }

    return MaterialApp(
      home: Scaffold(body:
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(child: generateButtons('note1.wav'), color: Colors.red,),
              Container(child: generateButtons('note2.wav'), color: Colors.green,),
              Container(child: generateButtons('note3.wav'), color: Colors. amber,),
              Container(child: generateButtons('note4.wav'), color: Colors.blue,),
              Container(child: generateButtons('note5.wav'), color: Colors.pink,),
              Container(child: generateButtons('note6.wav'), color: Colors.black,),
              Container(child: generateButtons('note7.wav'), color: Colors.cyan,),
            ],
          ),
        ),
      ),
    );
  }

}