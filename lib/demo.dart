import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //container is used to wrap the text widget
      width: double.infinity,//infinity tells the container to take as much width as possible
      margin: EdgeInsets.all(10),
      child: Text(
        questionText, //style is called the named argument of text widget
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
