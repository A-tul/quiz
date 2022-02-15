import 'package:flutter/material.dart';

import 'demo.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //underscore will make the class private
  var questionIndex = 0;

  void ansQues() {
    setState(() {
      // this function executes the build again
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'what is your favorite color?',
        'answer': ['Black', 'Blue', 'Green']
      },
      //these are maps with key:value pairs
      {
        'question': 'what is your favorite animal?',
        'answer': ['Rabbit', 'Lion', 'Tiger']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['question'],
            ),
            Answer(ansQues),
            Answer(ansQues),
            Answer(ansQues),
          ],
        ),
      ),
    );
  }
}
