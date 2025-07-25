import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/common/values/colors.dart';
import 'package:ulearning/pages/main/widget/heading_text_widget.dart';
import 'package:ulearning/pages/main/widget/menu_text.dart';
import 'package:ulearning/pages/main/widget/search_widget.dart';
import 'package:ulearning/pages/main/widget/slider_container.dart';
import 'package:ulearning/utils/AppRoutes.dart';

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
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.profileScreen);
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                                image: AssetImage('assets/images/learning.jpeg')
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(height: 30),
              SliverToBoxAdapter(
                child: Container(
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
              ),
              // SliverToBoxAdapter(
              //   child: Container(
              //     child: TextInputWidget(textEditingController: null, text: 'Search', icon: Icons.search,)
              //   ),
              // ),

              SliverPadding(padding: EdgeInsets.only(top: 20)),
              //
              SliverToBoxAdapter(
                child: SearchWidget(),
              ),


                SliverToBoxAdapter(
                  child: Container(
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
                ),
                SliverToBoxAdapter(
                  child: DotsIndicator(
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
                ),

                SliverToBoxAdapter(
                  child: HeadingTextWidget(text: 'Choice your course'),
                ),
                SliverPadding(padding: EdgeInsets.only(top: 20)),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      MenuText(text: 'All', backgroundColor: AppColors.primaryElement,color: AppColors.primaryElementText,),
                      MenuText(text: 'Popular', backgroundColor: AppColors.primaryBackground,color: AppColors.primarySecondaryElementText,),
                      MenuText(text: 'Newest', backgroundColor: AppColors.primaryBackground,color: AppColors.primarySecondaryElementText,)
                    ],
                  ),
                ),
              SliverPadding(
                  padding: EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 0
                  ),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1.6
                    
                  ), delegate: SliverChildBuilderDelegate(
                  childCount: 4,
                    (BuildContext context, int index) {
                       return GestureDetector(
                         onTap: () {
                           Navigator.pushNamed(context, AppRoutes.coursesDetail);
                         },
                         child: Container(
                           // height: 100,
                           padding: EdgeInsets.all(12),
                           // width:  100,
                           decoration: BoxDecoration(
                             color: Colors.red,
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               image: AssetImage(
                                 'assets/images/art.jpeg',
                               ),
                               fit: BoxFit.cover
                             ),
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                                  Text('Best course', style: TextStyle(
                                   color: AppColors.primaryElementText,
                                      fontWeight: FontWeight.bold
                                 ),),
                               Text('Best course',
                                 textAlign: TextAlign.left,
                                  style: TextStyle(
                                   color: AppColors.primaryElementText
                               ),)
                             ],
                           ),
                         ),
                       );
                    }
                ),
                ),
              )
              ],
            )
          ),
        ),
    );
  }
}
