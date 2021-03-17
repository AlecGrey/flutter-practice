import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var index = 0;

  void answerQuestion() {
    print('answer chosen!');
    print(index);
    index++;
  }

  static const questions = [
    "What is your name?",
    "What is your quest?"
        "What is your favorite color?"
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
              Text(questions[0]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
