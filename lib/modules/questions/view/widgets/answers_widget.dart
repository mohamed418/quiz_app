import 'package:flutter/material.dart';

class AnswersWidget extends StatefulWidget {
  final int answersCount;
  final List<String> answers;

  const AnswersWidget({
    super.key,
    required this.answersCount,
    required this.answers,
  });

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {

  Color pressedColor = Colors.grey.shade300;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: InkWell(
              onTap: () {
                print(index);
                if(index == 0){
                  setState(() {
                    pressedColor = Colors.red;
                  });
                }
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: pressedColor,
                ),
                child: Center(
                  child: Text(widget.answers[index], style: TextStyle(fontSize: 30)),
                ),
              ),
            ),
          ),
          itemCount: widget.answersCount,
        ),
      ),
    );
  }
}

//                   0          1         2
// List names = ['mohamed', 'tw7eed', 'mahmoud', ....]
