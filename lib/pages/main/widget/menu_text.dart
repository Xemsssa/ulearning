import 'package:flutter/material.dart';

import '../../../common/values/colors.dart';

class MenuText extends StatelessWidget {
  final String text;
  final Color color;
  final Color backgroundColor;
  const MenuText({
    super.key,
    required this.text, required this.color, required this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor
      ),
      child: Text(text, style: TextStyle(
          color: color
      ),
      ),
    );
  }
}