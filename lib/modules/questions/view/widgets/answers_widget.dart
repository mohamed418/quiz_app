import 'package:flutter/material.dart';

class AnswersWidget extends StatefulWidget {
  final int answersCount;
  final List<String> answers;
  final int correctIndex;

  // constructor
  const AnswersWidget({
    super.key,
    required this.answersCount,
    required this.answers,
    required this.correctIndex,
  });

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  int? selectedIndex;

  Color getAnswerColor(index) {
    if (selectedIndex == null) {
      return Colors.grey.shade300;
    }

    if (index == selectedIndex) {
      return selectedIndex == widget.correctIndex ? Colors.green : Colors.red;
    }

    return Colors.grey.shade300;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 600,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: InkWell(
                  onTap: () {
                    print(index);
                    // set => يضع
                    // state => حاله
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: getAnswerColor(index),
                    ),
                    child: Center(
                      child: Text(
                        widget.answers[index],
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: widget.answersCount,
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //   child: GestureDetector(
        //     onTap: () {
        //       selectedIndex == null
        //           ? print('test')
        //           : Navigator.of(context).push(
        //               MaterialPageRoute(
        //                 builder: (context) => Question2Screen(),
        //               ),
        //             );
        //     },
        //     child: Container(
        //       width: double.infinity,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20),
        //         gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: AlignmentGeometry.bottomCenter,
        //           colors: [
        //             selectedIndex == null ? Colors.black12 : Colors.black12,
        //             selectedIndex == null
        //                 ? Colors.black12
        //                 : Colors.grey.shade600,
        //           ],
        //         ),
        //       ),
        //       child: Center(
        //         child: Padding(
        //           padding: const EdgeInsets.symmetric(vertical: 10.0),
        //           child: Text(
        //             'Next',
        //             style: TextStyle(color: Colors.black, fontSize: 30),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

/// the first step is: saving the index of the current user pressed.
/// the second step: check the selected index is equal to the index of the correct answer

//                   0          1         2
// List names = ['mohamed', 'tw7eed', 'mahmoud', ....]

/// MVVM
/// model - view - view-model
