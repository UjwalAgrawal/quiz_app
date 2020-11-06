import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function reset;
  Result(this.finalScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (finalScore == 3) {
      resultText = "Perfect boy \n3";
    } else if (finalScore == 2) {
      resultText = "Almost Perfect boy\n2";
    } else if (finalScore == 1) {
      resultText = "Well try boy\n1";
    } else {
      resultText = "Try again! Good luck!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text("Reset"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
