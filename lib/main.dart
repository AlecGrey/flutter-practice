// packages
import 'package:flutter/material.dart';
// widgets
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  void _answerQuestion() {
    print(_index);
    if (_index == _questions.length - 1)
      setState(() => _index = 0);
    else
      setState(() => _index++);
  }

  static const _questions = [
    {
      'questionText': "What is your name?",
      'answers': ['steve', 'bo', 'derpo', 'fleeb'],
    },
    {
      'questionText': "What is your quest?",
      'answers': [
        'To find the Holy Grail',
        'Measure the airspeed velocity of an African Swallow',
        'To bring a shrubbery',
        'To bravely run away'
      ],
    },
    {
      'questionText': "What is your favorite color?",
      'answers': ['Blue', 'Green', 'Fuchsia', 'Yellow'],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'App',
            ),
            backgroundColor: Colors.blueGrey[700],
          ),
          body: Column(
            children: [
              Question(
                _questions[_index]['questionText'],
              ),
              ...(_questions[_index]['answers'] as List<String>).map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
