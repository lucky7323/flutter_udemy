// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './myText.dart';
import './textControl.dart';

void main() => runApp(FirstAssnApp());

class FirstAssnApp extends StatefulWidget {
  @override
  _FirstAssnAppState createState() => _FirstAssnAppState();
}

class _FirstAssnAppState extends State<FirstAssnApp> {
  var index = 0;

  void _generateText() {
    setState(() {
      index += 1;
      if (index > 1000) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First Assignment App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('First Assignment App'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  child: MyText(index),
                  padding: EdgeInsets.all(50),
                ),
                TextControl(_generateText),
                // TextControl(_generateText),
              ],
            ),
          ),
        ));
  }
}
