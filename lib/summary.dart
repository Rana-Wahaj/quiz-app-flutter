import 'package:flutter/material.dart';
import 'package:quiz_app/correct_ans_identifier.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> sum;
  const Summary(this.sum, {super.key});
  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: sum.map((data) {
            return SummaryDisplay(data);
          }).toList(),
        ),
      ),
    );
  }
}
