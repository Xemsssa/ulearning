import 'package:flutter/material.dart';
import 'package:ulearning/common/values/colors.dart';

import '../Log_in/widget/text_input_widget.dart';
import '../main/main_screen.dart';
import '../main/widget/heading_text_widget.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        title: Text("Your Courses"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                // width: double.infinity,
                height: 200,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryElement,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/art.jpeg',
                        ),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SearchWidget(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: HeadingTextWidget(text: 'All courses'),
              ),

              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  borderRadius: BorderRadius.circular(20)
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/art.jpeg'
                        ),
                        fit: BoxFit.cover,
                      ),
                        borderRadius: BorderRadius.circular(20)
                    ),),
                    Container(
                      width: size.width * 0.60,
                      // width: double.maxFinite,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Visual Identity', style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),
                                Text('20/35 Lessons', style: TextStyle(
                                  color: AppColors.primaryThreeElementText
                                ),),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text('\$700', style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
