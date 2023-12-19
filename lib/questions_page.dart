import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String ans) addAns;
  final void Function(String scr) resultPageFunc;
  const QuestionScreen(this.addAns, {super.key, required this.resultPageFunc});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currQuesIndex = 0;
  void changeQuestion() {
    setState(() {
      if (currQuesIndex < 5) {
        currQuesIndex++;
      } else {
        widget.resultPageFunc('resultScreen');
      }
    });
  }

  void onTap(String ans) {
    changeQuestion();
    widget.addAns(ans);
  }

  @override
  Widget build(context) {
    final currQues = questions;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currQues[currQuesIndex].quesText,
              style: GoogleFonts.robotoSlab(
                color: const Color.fromARGB(149, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currQues[currQuesIndex].getShuffledAnswers().map((answerText) {
              return AnswerButton(ansText: answerText, onTap: onTap);
            })
          ],
        ),
      ),
    );
  }
}
