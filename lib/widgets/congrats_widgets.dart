import 'package:flutter/material.dart';
import 'package:second_quiz_app_flutter/models/question_with_answer.dart';
import 'package:second_quiz_app_flutter/utils/app_colors.dart';

class CongratsWidgets extends StatelessWidget {
  final int score;
  final VoidCallback onTapReset, onTapHome;
  const CongratsWidgets({super.key, required this.score, required this.onTapReset, required this.onTapHome,});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            score >= 3 ? 'Congratulations!' : 'Hard Luck!',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: score >= 3 ? AppColors.orange : AppColors.red,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Your score: $score/${questionsWithAnswers.length}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
          TextButton(
            onPressed: onTapReset,
            child: const Text(
              'Reset Quiz',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: AppColors.orange,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          TextButton(
            onPressed: onTapHome,
            child: const Text(
              'Home Page',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: AppColors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}