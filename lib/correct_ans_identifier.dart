import 'package:flutter/material.dart';
import 'package:quiz_app/question_index_displayer.dart';

class SummaryDisplay extends StatelessWidget {
  final Map<String, Object> summary;
  const SummaryDisplay(this.summary, {super.key});
  @override
  Widget build(context) {
    var isCorrect = summary['chosen_ans'] == summary['correct_ans'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 15,
        ),
        QuesIndexDisplayer(summary['question_index'] as int, isCorrect),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summary['question'] as String,
                style: const TextStyle(fontSize: 17, color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(summary['chosen_ans'] as String,
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 173, 103, 170))),
              const SizedBox(
                height: 5,
              ),
              Text(summary['correct_ans'] as String,
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 128, 177, 111)))
            ],
          ),
        )
      ],
    );
  }
}
