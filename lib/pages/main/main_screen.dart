import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/common/values/colors.dart';
import 'package:ulearning/pages/main/widget/menu_text.dart';
import 'package:ulearning/pages/main/widget/slider_container.dart';

import '../Log_in/widget/text_input_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  get textEditingController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: AssetImage('assets/images/learning.jpeg')
                        )
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                // padding: EdgeInsets.(20),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello,', style: TextStyle(
                          color: AppColors.primaryThreeElementText,
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                        ),),
                        Text('Robert Nicklas',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: TextInputWidget(textEditingController: null, text: 'Search', icon: Icons.search,)
              ),

                Container(
                  padding: EdgeInsets.all(20),
                  width: 325,
                  height: 160,
                  child: PageView(
                    onPageChanged: (index) {

                    },
                    children: [
                      SliderContainer(link: 'assets/images/art.jpeg'),
                      SliderContainer(link: 'assets/images/art.jpeg'),
                      SliderContainer(link: 'assets/images/art.jpeg'),
                    ],
                  ),
                ),
                DotsIndicator(
                    dotsCount: 3,
                  decorator: DotsDecorator(
                    color: AppColors.primaryThreeElementText,
                    activeColor: AppColors.primaryElement,
                    size: const Size.square(5.0),
                    activeSize: const Size(17.0, 5.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Choose your course",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context, )
                      },
                      child: Text("See all", style: TextStyle(
                        color: AppColors.primaryThreeElementText
                      ),),
                    )
                  ],
                ),
                Row(
                  children: [
                    MenuText(text: 'All', backgroundColor: AppColors.primaryElement,color: AppColors.primaryElementText,),
                    MenuText(text: 'Popular', backgroundColor: AppColors.primaryBackground,color: AppColors.primarySecondaryElementText,),
                    MenuText(text: 'Newest', backgroundColor: AppColors.primaryBackground,color: AppColors.primarySecondaryElementText,)
                  ],
                )
              ],
            )
          ),
        ),
    );
  }
}
