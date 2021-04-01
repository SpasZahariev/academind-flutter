import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> questions = [
    'Question one?',
    'Question twoo?!',
    'How about question Three!??'
  ];

  int currentQuestion = 0;

  void answerQuestion() {
    setState(() => currentQuestion += 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${questions[currentQuestion]}'),
        ElevatedButton(child: Text('Button 1'), onPressed: answerQuestion),
        ElevatedButton(child: Text('Button 2'), onPressed: answerQuestion),
        ElevatedButton(child: Text('Button 3'), onPressed: answerQuestion),
      ],
    );
  }
}
