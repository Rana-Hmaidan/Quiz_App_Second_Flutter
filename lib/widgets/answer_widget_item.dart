import 'package:flutter/material.dart';
import 'package:second_quiz_app_flutter/models/question_with_answer.dart';
import 'package:second_quiz_app_flutter/utils/app_colors.dart';

class AnswerWidgetItem extends StatelessWidget {
  final Answer answer;
  final String? selectedAnswer;
  final VoidCallback onTap;

  const AnswerWidgetItem({
    super.key,
    required this.answer,
    this.selectedAnswer,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: selectedAnswer == answer.text
                ? AppColors.orange
                : AppColors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 4.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), 
                    image: DecorationImage(
                      image: AssetImage(answer.icon),
                      fit: BoxFit.cover, //change image fill type
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  answer.text,
                  style: TextStyle(
                    color: selectedAnswer == answer.text
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}