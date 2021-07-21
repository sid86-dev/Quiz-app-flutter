import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() select;
  final answerText;

  Answer(this.select, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.cyan,
            padding: EdgeInsets.all(20),
            textStyle: TextStyle(fontSize: 25)),
        child: Text(answerText),
        onPressed: select,
      ),
    );
  }
}
