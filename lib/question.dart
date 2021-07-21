import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Questions extends StatelessWidget {
  final questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // MARGIN IN ALL DIRECTION
      margin: EdgeInsets.all(30),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 23),
        textAlign: TextAlign.center,
      ),
    );
  }
}
