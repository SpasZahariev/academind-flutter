import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/model/inquiry.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<Inquiry> _questions = [
    Inquiry(
        'What\'s your favourite color?', ['Blue', 'Red', 'Green', 'Yellow']),
    Inquiry('What\'s your favourite letter?', ['a', 'b', 'c', 'd']),
    Inquiry(
        'What\'s your favourite planet?', ['Earth', 'Mars', 'Venus', 'Uranus']),
    Inquiry('What\'s your favourite language?', ['C', 'C++', 'C#', 'F#']),
  ];

  int _currentQuestion = 0;

  void answerQuestion() {
    setState(() => _currentQuestion += 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_currentQuestion].questionText),
        ..._questions[_currentQuestion]
            .answers
            .map((answerText) => Answer(answerQuestion, answerText))
            .toList(),
        // Answer(answerQuestion, _questions[_currentQuestion]['answers'][0]),
        // Answer(answerQuestion, _questions[_currentQuestion]['answers'][1]),
        // Answer(answerQuestion, _questions[_currentQuestion]['answers'][2]),
        // Answer(answerQuestion, _questions[_currentQuestion]['answers'][3]),
      ],
    );
  }
}
