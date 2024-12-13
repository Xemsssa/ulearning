import 'package:flutter/material.dart';

class SliderContainer extends StatelessWidget {
  final String link;
  const SliderContainer({
    super.key,
    required this.link
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 325,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage(
                link
            ),
          ),
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
