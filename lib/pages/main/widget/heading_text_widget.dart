import 'package:flutter/material.dart';

import '../../../common/values/colors.dart';

class HeadingTextWidget extends StatelessWidget {
  final String text;
  const HeadingTextWidget({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Choose your course",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/all_courses');
          },
          child: Text("See all", style: TextStyle(
              color: AppColors.primaryThreeElementText
          ),),
        )
      ],
    );
  }
}