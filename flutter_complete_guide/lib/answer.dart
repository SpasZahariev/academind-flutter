import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String _answerOption;

  Answer(this._selectHandler, this._answerOption);

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
        onPressed: _selectHandler,
      ),
    );
  }
}
