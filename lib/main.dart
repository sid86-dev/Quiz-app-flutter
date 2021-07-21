import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  @override
  // connection with _QuizState class
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final _questions = const [
    {
      "questionText": "What is your favourite OS?",
      "answers": [
        {"text": "ios", "score": 10},
        {"text": "Android", "score": 5},
        {"text": "Windows", "score": 8},
        {"text": "Linux", "score": 0}
      ]
    },
    {
      "questionText": "What is your favourite social media",
      "answers": [
        {"text": "Facebook", "score": 8},
        {"text": "Instagram", "score": 10},
        {"text": "Telegram", "score": 2},
        {"text": "Snapchat", "score": 5}
      ]
    },
    {
      "questionText": "What is your favourite brand?",
      "answers": [
        {"text": "Apple", "score": 10},
        {"text": "Samsung", "score": 5},
        {"text": "Oneplus", "score": 3},
        {"text": "Nokia", "score": 8}
      ]
    },
  ];
  var _questionIndex = 0;
  var totalScore = 0;
  // reset
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  // my function
  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex++;
    });
    // print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // my list

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("myQuiz"),
        ),
        body:
            // if true
            _questionIndex < _questions.length
                ? Data(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(totalScore, _resetQuiz),
      ),
    );
  }
}
