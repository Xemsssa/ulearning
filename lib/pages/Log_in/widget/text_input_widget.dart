import 'package:flutter/material.dart';

import '../../../common/values/colors.dart';

class TextInputWidget extends StatelessWidget {
  final String text;
  IconData icon;

  TextInputWidget(
      {super.key,
      required this.textEditingController,
      required this.text,
      required this.icon});

  final textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primaryBackground,
            border: Border.all(width: 1, color: Colors.grey)
        ),
        child: TextField(
          obscureText: text == 'Password' ? true : false,
          controller: textEditingController,
          decoration: InputDecoration(
              hintText: text,
              prefix: Icon(icon, color: AppColors.primaryText),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(width: 1.0, color: AppColors.primaryBackground),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(width: 1.0, color: AppColors.primaryBackground),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              )
          ),
        )
    );
  }
}
