import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function handleRestart;

  Result(this.finalScore, this.handleRestart);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You did it! Score is: $finalScore',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: handleRestart, child: Text('Restart Quiz')),
        ],
      ),
    );
  }
}
