import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(150, 255, 255, 255),
            width: 300,
          ),

          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     color: const Color.fromARGB(255, 255, 255, 255),
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Learn Flutter the fun way!!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(
              Icons.arrow_right_alt,
              size: 30,
              color: Colors.white,
            ),
            label: Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
