import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are ... Strange?!";
    } else if (resultScore <= 12) {
      resultText = "You are so bad!";
    } else if (resultScore <= 16) {
      resultText = "Preety likeable!";
    } else {
      resultText = "You are awesome!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // MARGIN IN ALL DIRECTION
      margin: EdgeInsets.all(40),
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25),
          ),
          TextButton(
              onPressed: resetQuiz,
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
