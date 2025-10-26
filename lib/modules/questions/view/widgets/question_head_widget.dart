import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';

class QuestionHeadWidget extends StatelessWidget {
  final int number;
  final String label;

  const QuestionHeadWidget({
    super.key,
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              child: Text(
                number.toString(),
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(label, style: TextStyle(fontSize: 35, color: Colors.black))),
        ],
      ),
    );
  }
}
