import 'package:flutter/material.dart';

class ReusableCardChild extends StatelessWidget {

  final Text title;
  final Icon icon;

  ReusableCardChild({@required this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          width: 15,
          height: 15,
        ),
        title

      ],
    );
  }
}