import 'package:flutter/material.dart';
import '../widgets/action_button_widget.dart';
import '../widgets/answers_widget.dart';
import '../widgets/question_head_widget.dart';

class Question2Screen extends StatelessWidget {
  const Question2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            QuestionHeadWidget(
              number: 2,
              label: "The best player in the history",
            ),
            AnswersWidget(answersCount: 3,answers: ['jfl','jbf','hjf'],correctIndex: 2,),
          ],
        ),
      ),
    );
  }
}
