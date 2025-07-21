// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning/pages/welcome/widgets/page_widget.dart';

import '../../common/values/colors.dart';
// import 'package:ulearning/pages/welcome/widgets/page_widget.dart';
// import '../../widgets/page_widget.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 35),
          width: 375.w ,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index){
                  // state.page = index;
                },
                children: [
                  PageWidget(
                      images: 'assets/images/reading.jpeg' ,index: 1, buttonName: 'next', text1:'First See Learning', text2: "Forget about a lot of paper all knowledge in one listins"),
                  PageWidget(  images: 'assets/images/chatting.jpeg' ,index: 2, buttonName: 'next', text1:'Connect With Everyone', text2: "Always keep in touch with your tutor & friend. Lets get connected"),
                  PageWidget(  images: 'assets/images/learning.jpeg' ,index: 3, buttonName: 'get started', text1:'Always Fascinated learning', text2: "Anywhere, anytime. The time is at your discretion so study whenever you want"),
                ],
              ),
              Positioned(
                bottom: 150.h,
                child: DotsIndicator(
                  // position: state.page,
                  mainAxisAlignment: MainAxisAlignment.center,
                dotsCount: 3,
                  decorator: DotsDecorator(
                    color:AppColors.primary_bg,
                    activeColor: AppColors.primaryElement,
                    size: Size.square(8.0),
                    activeSize:  Size(10.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  )
              ))
            ],
          ),
        ),
      ),
    );
  }
}
