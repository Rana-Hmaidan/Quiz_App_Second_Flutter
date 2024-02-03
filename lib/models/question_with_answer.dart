import 'package:flutter/material.dart';

class QuestionWithAnswer {
  final String question;
  final List<Answer> answers;
  final String correctAnswer;

  QuestionWithAnswer({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });
}

class Answer {
  final String text;
  final String icon;

  Answer({required this.text, required this.icon});
}

List<QuestionWithAnswer> questionsWithAnswers = [
  QuestionWithAnswer(
    question: 'Who is making the Web standards?',
    answers: [
      Answer(
        text: 'The World Wide Web Consortium',
        icon: 'assets/images/w3c.png',
      ),
      Answer(
        text: 'Mozilla',
        icon: 'assets/images/mozilla.png'
      ),
      Answer(
        text: 'Microsoft',
        icon: 'assets/images/microsoft.png',
      ),
      Answer(
        text: 'Google',
        icon: 'assets/images/google.png',
      ),
    ],
    correctAnswer: 'The World Wide Web Consortium',
  ),
  QuestionWithAnswer(
    question: 'What is actually electricity?',
    answers: [
      Answer(
        text: 'A flow of water',
        icon: 'assets/images/water.jpg',
      ),
      Answer(
        text: 'A flow of air',
        icon: 'assets/images/air.jpg',
      ),
      Answer(
        text: 'A flow of electrons',
        icon: 'assets/images/electrons.png',
      ),
      Answer(
        text: 'A flow of atoms',
        icon: 'assets/images/atoms.png',
      ),
    ],
    correctAnswer: 'A flow of electrons',
  ),
  QuestionWithAnswer(
    question: 'Which of the following animals can run the fastest?',
    answers: [
      Answer(
        text: 'Camel',
        icon: 'assets/images/camel.png',
      ),
      Answer(
        text: 'Cheetah',
        icon: 'assets/images/cheetah.png',
      ),
      Answer(
        text: 'Horse',
        icon: 'assets/images/horse.jpg',
      ),
      Answer(
        text: 'Lion',
        icon: 'assets/images/lion.jpg',
      ),
    ],
    correctAnswer: 'Cheetah',
  ),
  QuestionWithAnswer(
    question: 'What is the largest continent in size?',
    answers: [
      Answer(
        text: 'Asia',
        icon: 'assets/images/asia.jpg',
      ),
      Answer(
        text: 'Africa',
        icon: 'assets/images/africa.png',
      ),
      Answer(
        text: 'Europe',
        icon: 'assets/images/europe.jpg',
      ),
      Answer(
        text: 'North America',
        icon: 'assets/images/northAmerica.jpg',
      ),
    ],
    correctAnswer: 'Asia',
  ),
  QuestionWithAnswer(
    question: 'We often use sodium bicarbonate in the kitchen. What is its other name?', 
    answers: [
      Answer(
        text: 'Vinegar', 
        icon: 'assets/images/vinegar.jpg'
      ),
      Answer(
        text: 'Sugar', 
        icon: 'assets/images/sugar.jpg'
      ),
      Answer(
        text: 'Salt', 
        icon: 'assets/images/salt.png'
      ),
      Answer(
        text: 'Baking soda', 
        icon: 'assets/images/bakingSoda.png'
      ),
    ], 
    correctAnswer: 'Baking soda'
  ),
  QuestionWithAnswer(
    question: '‘Free throw’ is associated with ?', 
    answers: [
      Answer(
        text: 'Basketball', 
        icon: 'assets/images/Basketball.png'
      ),
      Answer(
        text: 'Hockey', 
        icon: 'assets/images/hockey.png'
      ),
      Answer(
        text: 'Volleyball', 
        icon: 'assets/images/volleyball.png'
      ),
      Answer(
        text: 'Football', 
        icon: 'assets/images/football.png'
      ),
    ], 
    correctAnswer: 'Basketball'
  ),
];