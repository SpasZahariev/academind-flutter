import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String _answerOption;
  final int _outcomeScore;

  Answer(this._selectHandler, this._answerOption, this._outcomeScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          onPrimary: Colors.black,
        ),
        child: Text(_answerOption),
        onPressed: () => _selectHandler(_outcomeScore),
      ),
    );
  }
}
