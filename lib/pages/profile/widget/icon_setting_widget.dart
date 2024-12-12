import 'package:flutter/material.dart';

import '../../../common/values/colors.dart';

class IconSettingWidget extends StatelessWidget {
  final String text;
  IconData icon;
  IconSettingWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
              padding:EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryElement
              ),
              child: Icon(icon, color: AppColors.primaryBackground,)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(text, style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
    );
  }
}