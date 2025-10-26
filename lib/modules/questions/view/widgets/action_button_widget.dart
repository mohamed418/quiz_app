import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {

  final String label;
  final VoidCallback onTap;

  const ActionButtonWidget({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: AlignmentGeometry.bottomCenter,
              colors: [Colors.black12, Colors.grey.shade600],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                label,
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
