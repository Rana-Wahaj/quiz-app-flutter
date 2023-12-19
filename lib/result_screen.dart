import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/summary.dart';

class ResultPage extends StatelessWidget {
  final List<String> listChosenAns;
  final void Function() nextScr;

  const ResultPage(
      {super.key, required this.listChosenAns, required this.nextScr});

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> sum = [];
    for (int i = 0; i < questions.length; i++) {
      sum.add({
        'question_index': i,
        'question': questions[i].quesText,
        'correct_ans': questions[i].answers[0],
        'chosen_ans': listChosenAns[i]
      });
    }
    return sum;
  }

  @override
  Widget build(context) {
    final totQues = questions.length;
    final summary = getSummary();
    final correctCount = summary.where((data) {
      return data['correct_ans'] == data['chosen_ans'];
    }).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You have Answered $correctCount out of $totQues Correctly!',
            style: const TextStyle(
                fontSize: 25,
                color: Color.fromARGB(160, 255, 253, 253),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Summary(summary),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(149, 255, 255, 255),
              ),
              onPressed: nextScr,
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!')),
        ],
      ),
    );
  }
}
