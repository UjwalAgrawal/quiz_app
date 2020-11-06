import 'package:flutter/material.dart';

// import 'question.dart';
// import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main(List<String> args) {
  // print("yoyoyoyo");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What's the biggest animal in the world?",
      "answers": [
        {"text": "Girrafe", "score": 0},
        {"text": "The blue whale", "score": 1},
        {"text": "Elephant", "score": 0},
        {"text": "Hippopotamus", "score": 0}
      ]
    },
    {
      "questionText": "To a single decimal point, many kilometers in a mile?",
      "answers": [
        {"text": "1.4km", "score": 0},
        {"text": "1.5km", "score": 0},
        {"text": "1.6km", "score": 1},
        {"text": "1.7km", "score": 0}
      ]
    },
    {
      "questionText":
          "How many times are the hands of a clock at right angle in a day?",
      "answers": [
        {"text": "22", "score": 0},
        {"text": "24", "score": 0},
        {"text": "44", "score": 1},
        {"text": "48", "score": 0}
      ]
    }
  ];
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    // var answers = [
    //   ["red", "blue", "green"],
    //   ["lion", "cat", "dog"]
    // ];
    return MaterialApp(
      home: Scaffold(
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
        appBar: AppBar(
          title: Text("Ujwal ka app"),
        ),
      ),
    );
  }
}
