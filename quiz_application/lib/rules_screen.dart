import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rules & Guidelines')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text('Quiz Rules:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Text('1. Each question has 4 options.'),
          Text('2. You cannot go back to previous questions.'),
          Text('3. Each correct answer gives 10 points.'),
          Text('4. Complete the quiz to view your score.'),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Got it!'),
          ),
        ],
      ),
    );
  }
}
