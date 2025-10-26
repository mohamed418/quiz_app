import 'package:flutter/material.dart';
import 'package:quizapp/modules/questions/view/screens/question2_screen.dart';
import '../widgets/action_button_widget.dart';
import '../widgets/answers_widget.dart';
import '../widgets/question_head_widget.dart';

class Question1Screen extends StatelessWidget {
  const Question1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            QuestionHeadWidget(
              number: 1,
              label: "what is the color of the sky",
            ),

            AnswersWidget(answersCount: 3, answers: ['red', 'green', 'blue']),

            ActionButtonWidget(
              label: 'Next',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question2Screen()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
