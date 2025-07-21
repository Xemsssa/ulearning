import 'package:flutter/material.dart';

import '../../../common/values/colors.dart';
class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  const ButtonWidget({
    super.key,
    required this.text, required this.color, required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(20),
      width: double.maxFinite,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
      ),
      child: Center(child: Text(text, style: TextStyle(
          color: textColor
      ),)),
    );
  }
}