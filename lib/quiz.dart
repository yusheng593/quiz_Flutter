import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<Color> gradientColors = [Colors.blueGrey, Colors.grey];
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  static const startScreen = 'start-screen';
  static const questionsScreen = 'questions-screen';
  static const resultsScreen = 'results-screen';
  String? activeScreen;

  List<String> selectedAnswers = [];

  chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = resultsScreen;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    activeScreen = startScreen;
  }

  void switchScreen() {
    setState(() {
      activeScreen = questionsScreen;
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = startScreen;
      selectedAnswers = []; // 清空答案
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    switch (activeScreen) {
      case startScreen:
        screenWidget = StartScreen(switchScreen);
        break;
      case questionsScreen:
        screenWidget = QuestionsScreen(chooseAnswer);
        break;
      case resultsScreen:
        screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers,
          onRestart: restartQuiz,
        );
        break;
      default:
        screenWidget = StartScreen(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: gradientColors,
                  begin: startAlignment,
                  end: endAlignment),
            ),
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
