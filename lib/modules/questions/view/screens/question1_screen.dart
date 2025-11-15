import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/modules/questions/view_model/quiz_cubit.dart';
import 'package:quizapp/modules/questions/view_model/quiz_states.dart';
import '../widgets/answers_widget.dart';
import '../widgets/question_head_widget.dart';

class Question1Screen extends StatelessWidget {
  const Question1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              QuestionHeadWidget(
                number: 1,
                label: 'what is the meaning of perfecto',
              ),

              AnswersWidget(
                answersCount: 3,
                answers: ['red', 'green', 'blue'],
                correctIndex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
