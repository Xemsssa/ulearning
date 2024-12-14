import 'package:flutter/material.dart';
class CourseDetailTextWidget extends StatelessWidget {
  final String text;
  const CourseDetailTextWidget({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Text(text, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
        )
    );
  }
}