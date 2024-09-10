import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onUserChoose, {super.key});

  final void Function(String answer) onUserChoose;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void whenUserAnswer(String selectedAnswer) {
    widget.onUserChoose(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map(
            (answer) {
              return AnswerButton(answer, () {
                whenUserAnswer(answer);
              });
            },
          ),
        ],
      ),
    );
  }
}
