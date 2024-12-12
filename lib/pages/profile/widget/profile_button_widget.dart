import 'package:flutter/material.dart';

import '../../../common/values/colors.dart';

class ProfileButtonWidget extends StatelessWidget {
  final String text;
  IconData icon;
  ProfileButtonWidget({
    super.key,
    required this.text,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.primaryElement
      ),
      child: Column(
        children: [
          Icon(icon,color: AppColors.primaryBackground,),
          Text(text, style: TextStyle(
              color: AppColors.primaryBackground
          ),)
        ],
      ),
    );
  }
}