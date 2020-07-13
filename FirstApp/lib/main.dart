import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  int questionIndex = 0;
  void answerQuestion() {
    questionIndex += 1;
    print("정답!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["가장 친한 친구의 이름은?", "가장 좋아하는 음식은?"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello, Dart!"),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text("1. 준용"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("2. 수현"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("3. 해민"),
            onPressed: answerQuestion,
          )
        ]),
      ),
    );
  }
}
