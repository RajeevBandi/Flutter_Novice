import 'package:flutter/material.dart';
import 'package:quiz_application/data/questions.dart';
import 'package:quiz_application/home_screen.dart';
import 'package:quiz_application/questions_screen.dart';
import 'package:quiz_application/results_screen.dart';
import 'package:quiz_application/rules_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'Home-Screen';

  //to pass the function to other class to change the state there are two approach
  //approach 1
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = QuestionsScreen();
  //   });
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }

  @override
  Widget build(context) {
    // var screenWigit = activeScreen == 'Home-Screen'
    //     ? HomeScreen(switchScreen)
    //     : QuestionsScreen();

    Widget screenWidget = HomeScreen(switchScreen);
    if (activeScreen == 'Question-Screen') {
      selectedAnswers = [];
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'Result-Screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: switchScreen,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 238, 29, 203),
                Color.fromARGB(255, 124, 27, 235),
                Color.fromARGB(255, 111, 183, 243),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RulesScreen()),
              );
            },
            backgroundColor: const Color.fromARGB(255, 220, 200, 255),
            child: Icon(Icons.help_outline),
          ),
        ),
      ),
    );
  }
}
