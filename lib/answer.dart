import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(

          onPressed: selectHandler, child: const Text("Answer1"), ),
    );
  }
}
