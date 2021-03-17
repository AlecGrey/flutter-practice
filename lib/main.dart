// packages
import 'package:flutter/material.dart';
// widgets
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // NAVIGATE TO QUIZ
  void navigateToQuiz(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute<void>(builder: (BuildContext context) {
      return Quiz();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App',
        ),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        width: double.infinity,
        child: Column(
          children: [
            Text('Welcome Home!'),
            ElevatedButton(
              onPressed: () => navigateToQuiz(context),
              child: Text('Launch Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
