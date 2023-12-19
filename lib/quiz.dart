import 'package:flutter/material.dart';
import 'package:quiz_app/start_page.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnsweres = [];
  int correctAnsC = 0;
  var currentState = 'startScreen';

  void stateChanger() {
    setState(() {
      selectedAnsweres = [];
      correctAnsC = 0;
      currentState = 'questionScreen';
    });
  }

  void addAnswers(String ans) {
    selectedAnsweres.add(ans);
  }

  void displayResultScreen(String scr) {
    setState(() {
      currentState = scr;
    });
  }

  @override
  Widget build(context) {
    Widget runingState = StartPage(stateChanger);
    if (currentState == 'questionScreen') {
      runingState = QuestionScreen(
        addAnswers,
        resultPageFunc: displayResultScreen,
      );
    }
    if (currentState == 'resultScreen') {
      runingState = ResultPage(
        listChosenAns: selectedAnsweres,
        nextScr: stateChanger,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 20, 78, 123),
                Color.fromARGB(255, 44, 117, 172)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: runingState),
      ),
    );
  }
}
