import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final int index;
  static final _languageNameList = [
    'Dart',
    'C',
    'C++',
    'C#',
    'Python',
    'Java',
    'Kotlin',
    'Scala',
    'JavaScript',
    'TypeScript',
    'Swift',
    'Objective-C',
    'PHP',
    'GO',
    'Ruby',
    'R',
  ];
  final nameCount = _languageNameList.length;

  MyText(this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
      _languageNameList[index % nameCount],
      style: TextStyle(
        color: Colors.blue,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
