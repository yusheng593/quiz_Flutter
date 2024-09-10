import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
    this.answerText,
    this.onTap, {
    super.key,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 60,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: const Color.fromARGB(150, 255, 255, 255),
          foregroundColor: Colors.blueGrey,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(40),
          // ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
