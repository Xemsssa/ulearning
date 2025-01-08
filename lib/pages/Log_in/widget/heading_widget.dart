import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String text;
  HeadingWidget({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 20, bottom: 10),
          child: Text(text),
        ));
  }
}
