import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/model/inquiry.dart';
import './question.dart';
import './answer.dart';
import './result.dart';
import 'model/outcome.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<Inquiry> _questions = [
    Inquiry('What\'s your favourite color?', [
      Outcome('Blue', 30),
      Outcome('Red', 10),
      Outcome('Green', 8),
      Outcome('Yellow', 5)
    ]),
    Inquiry('What\'s your favourite letter?', [
      Outcome('a', 30),
      Outcome('b', 20),
      Outcome('c', 15),
      Outcome('d', 10)
    ]),
    Inquiry('What\'s your favourite planet?', [
      Outcome('Earth', 30),
      Outcome('Mars', 20),
      Outcome('Venus', 10),
      Outcome('Uranus', 5)
    ]),
    Inquiry('What\'s your favourite language?', [
      Outcome('C', 30),
      Outcome('C++', 20),
      Outcome('C#', 15),
      Outcome('F#', 10)
    ]),
  ];

  int _currentQuestion = 0;
  int _totalScore = 0;

  void answerQuestion(int answerScore) {
    setState(() {
      _currentQuestion += 1;
      _totalScore += answerScore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _currentQuestion < _questions.length
        ? Column(
            children: [
              Question(_questions[_currentQuestion].questionText),
              ..._questions[_currentQuestion]
                  .outcomes
                  .map((outcome) =>
                      Answer(answerQuestion, outcome.answer, outcome.score))
                  .toList(),
            ],
          )
        : Result(_totalScore);
  }
}
