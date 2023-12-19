import 'package:flutter/material.dart';

class QuesIndexDisplayer extends StatelessWidget {
  final bool isCorrect;
  final int index;
  const QuesIndexDisplayer(this.index, this.isCorrect, {super.key});

  @override
  Widget build(context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 60, 135, 78)
            : const Color.fromARGB(255, 205, 82, 82),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        (index + 1).toString(),
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
