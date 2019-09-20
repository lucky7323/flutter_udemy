import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function _generateText;

  TextControl(this._generateText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Generate\n Programming Language Name!',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      onPressed: _generateText,
    );
  }
}
