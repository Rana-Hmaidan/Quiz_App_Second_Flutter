import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:second_quiz_app_flutter/models/question_with_answer.dart';
import 'package:second_quiz_app_flutter/pages/home_page.dart';
import 'package:second_quiz_app_flutter/utils/app_colors.dart';
import 'package:second_quiz_app_flutter/widgets/answer_widget_item.dart';
import 'package:second_quiz_app_flutter/widgets/congrats_widgets.dart';
import 'package:second_quiz_app_flutter/widgets/main_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  int questionIndex = 0;
  bool isFinished = false;
  int score = 0;
  String? selectedAnswer;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: !isFinished
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    Text(
                      questionsWithAnswers[questionIndex].question,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Answer and get points!',
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Column(
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Step ${questionIndex+1}',
                           style: const TextStyle(
                            color: AppColors.orange,
                            fontWeight: FontWeight.w500,
                            fontSize:16.0,
                          ),
                        ),
                        Text(
                          ' of ${questionsWithAnswers.length}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize:16.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    StepProgressIndicator(
                      size:2,
                      currentStep: questionIndex+1,
                      totalSteps: questionsWithAnswers.length,
                      selectedColor: AppColors.orange,
                      unselectedColor: AppColors.grey,
                    ),
                   ],
                   ),
                    Column(
                      children: questionsWithAnswers[questionIndex]
                          .answers
                          .map((answer) => AnswerWidgetItem(
                                answer: answer,
                                selectedAnswer: selectedAnswer,
                                onTap: () {
                                  setState(() {
                                    selectedAnswer = answer.text;
                                  });
                                },
                              ))
                          .toList(),
                    ),
                    const Spacer(),
                    MainButton(
                      text: 'Next',
                      onTap: () {
                        setState(() {
                        if(selectedAnswer != null){
                          final questionObj = questionsWithAnswers[questionIndex];
                          if (selectedAnswer == questionObj.correctAnswer) {
                            score++;
                          }
                          if (questionIndex < questionsWithAnswers.length - 1 && selectedAnswer != null) {
                            questionIndex++;
                          } else {
                            isFinished = true;
                          }
                          selectedAnswer = null;
                        }else{
                          final snackbar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title:'Warning!',
                                  message:' Please, Choose the Answer!',
                                  contentType: ContentType.warning,
                                ),
                              );
                            ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          }
                        });
                      },
                    ),
                  ],
                )
              : CongratsWidgets(
                  score: score,
                  onTapReset: () {
                    setState(() {
                      questionIndex = 0;
                      isFinished = false;
                      score = 0;
                      selectedAnswer = null;
                    });
                  },
                  onTapHome: (){
                    Navigator.of(context).pop(
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage())
                    );
                  },
                ),
        ),
      ),
    );
  }
}