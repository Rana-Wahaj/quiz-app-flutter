import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String ansText;
  final void Function(String ans) onTap;
  const AnswerButton({super.key, required this.ansText, required this.onTap});
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {
        onTap(ansText);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 6, 61, 83),
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      ),
      child: Text(
        ansText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
