import 'package:flutter/material.dart';
import './question.dart';

import './answer.dart';

class Data extends StatelessWidget {
  final questions;
  final questionIndex;
  final answerQuestion;

  Data({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer["text"]);
        }).toList()
      ],
    );
  }
}
