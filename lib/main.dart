import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
    //throw UnimplementedError();
  }
}

class MyAppState extends State<MyApp> {
  int questionId = 0;

  static const question = [
    {
      'questionText': 'Whats your favorite color',
      'answers': ['white', 'red', 'blue', 'pink'],
    },
    {
      'questionText': 'Whats your favorite animal',
      'answers': ['dog', 'cat', 'horse', 'duck'],
    },
    {
      'questionText': 'Whats your favorite food',
      'answers': ['gobi', 'panipuri', 'noodles', 'pasta'],
    },
    {
      'questionText': 'Whats your favorite drink',
      'answers': ['coke', '7up', 'pepsi', 'thumbs up'],
    },
  ];

  void answerQuestion() {
    setState(() {
      questionId = questionId + 1;
    });
  }

  void reset() {
    setState(() {
      questionId = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questionId >= question.length
            ? Result(reset)
            : Quiz(answerQuestion, questionId),
      ),
    );
  }
}
