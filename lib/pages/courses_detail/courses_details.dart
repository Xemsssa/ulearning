import 'package:flutter/material.dart';
import 'package:ulearning/pages/courses_detail/widget/course_datail_text_widget.dart';

import '../../common/values/colors.dart';
import '../main/widget/menu_text.dart';
import '../profile/widget/icon_setting_widget.dart';
import '../welcome/widgets/button_widget.dart';

class CoursesDetail extends StatelessWidget {
  const CoursesDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        title: const Text("Courses Detail"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                // width: double.infinity,
                height: 200,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryElement,
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/art.jpeg',
                        ),
                        fit: BoxFit.cover
                    )
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      child:  const MenuText(text: 'Autor Page', backgroundColor: AppColors.primaryElement,color: AppColors.primaryElementText,),
                    ),
                  ),
                  const Icon(Icons.person, color: AppColors.primarySecondaryElementText,),const Text('0'),
                  const SizedBox(width: 20,),
                  const Icon(Icons.star, color: AppColors.primarySecondaryElementText,),const Text('0')
                ],
              ),

              const CourseDetailTextWidget(text: 'Course Description' ),

              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget tincidunt nisl. Sed varius in neque ut sagittis. Sed molestie dui in nunc malesuada eleifend. Nullam libero nibh, eleifend at fringilla non, malesuada ut enim. Nulla facilisi. Fusce vitae sapien eu ligula efficitur volutpat. Curabitur at mi metus. Curabitur commodo hendrerit sem.'),
              ),

              // ButtonWidget(text: "Go Buy", color: AppColors.primaryElement, textColor:AppColors.primaryElementText),
              ButtonWidget(text: "Go buy!", textColor: AppColors.primaryBackground, color: AppColors.primaryElement,),

              const CourseDetailTextWidget(text: 'The Course Included' ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    IconSettingWidget(text: 'Payment Details', icon: Icons.video_camera_back),
                    IconSettingWidget(text: 'Payment Details', icon: Icons.newspaper_outlined),
                    IconSettingWidget(text: 'Payment Details', icon: Icons.share_sharp),
                  ],
                ),
              ),

              const CourseDetailTextWidget(text: 'Lesson List' ),
            ],
          )
      ),
    );
  }
}


