// packages
import 'package:flutter/material.dart';
// widgets
import './question.dart';
import './answer.dart';

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var _index = 0;

  void _answerQuestion() {
    print(_index);
    setState(() => _index++);
  }

  bool _questionsRemaining() {
    return _questions.length > _index;
  }

  static const _questions = [
    {
      'questionText': "What is your name?",
      'answers': ['Arthur', 'Lancelot', 'Robin', 'Bedivere', 'Gallahad'],
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
        body: _questionsRemaining()
            ? Column(
                children: [
                  Question(
                    _questions[_index]['questionText'],
                  ),
                  ...(_questions[_index]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Column(
                children: [
                  Text(
                    'Quiz Complete!.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Home'),
                  ),
                ],
              )),
      ),
    );
  }
}
