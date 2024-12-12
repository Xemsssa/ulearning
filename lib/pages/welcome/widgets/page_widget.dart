import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning/main.dart';
// import 'package:ulearning/pages/log_in/Log_in.dart';

import '../../Log_in/Log_in.dart';
import 'button_widget.dart';

class PageWidget extends StatelessWidget {
  final String text1, text2;
  final int index;
  final String buttonName;
  final String images;
  // final BuildContext: context;

  PageWidget
      ({
    super.key,
    required this.text1,
    required this.text2,
    required this.buttonName,
    required this.index,
    required this.images,
    // this.BuildContext
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 345.w,
          width: 245.w,
          child:
            Image.asset(images,
            fit: BoxFit.cover,),
        ),
        Container(
          child: Text(text1,
            style: TextStyle(
                fontSize: 24.sp
            ),),
        ),
        // SizedBox(height: 10,),
        Container(
          width: 375.w,
          padding: const EdgeInsets.all(20),
          child: Text(text2,
            style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey
            ),
          ),
        ),

        SizedBox(height: 200,),
        GestureDetector(
          onTap: () {
            if(index < 3) {
            // pageController.animateToPage(
            //   index,
            //     const Duration(miliseconds: 500),
            //   curve: Curves.easeIn
            // )
            } else{ Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogIn()));
            }},
          child: ButtonWidget(text: index == 3 ? "Get Started" : 'Next', color: Colors.blueAccent, textColor: Colors.white,)
        )
      ],
    );
  }
}
