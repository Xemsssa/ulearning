import 'package:flutter/material.dart';
import 'package:ulearning/common/values/colors.dart';
import 'package:ulearning/pages/profile/widget/icon_setting_widget.dart';
import 'package:ulearning/pages/profile/widget/profile_button_widget.dart';
import 'package:ulearning/utils/AppRoutes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                  GestureDetector(
                      onTap: (){
                        // Navigator.pushNamed(context, AppRoutes.homeScreen);
                        Navigator.pop(context, AppRoutes.homeScreen);
                      },
                      child: Icon(Icons.menu)),
                  Text('Profile', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  Icon(Icons.menu)
                ],
              ),

              SizedBox(height: 20,),
              
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/learning.jpeg'
                    ),
                  )
                ),
              ),

              Text('dbestech',  style: TextStyle(
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){
                    Navigator.pushNamed(context, AppRoutes.myCourses);
                  },child: ProfileButtonWidget(text: 'My Courses' , icon:Icons.video_camera_back_rounded)),
                  GestureDetector(onTap: (){},child: ProfileButtonWidget(text: 'Buy courses' , icon:Icons.book)),
                  GestureDetector(onTap: (){},child: ProfileButtonWidget(text: '4.9' , icon:Icons.star)),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          onTap: (){},
                          child: IconSettingWidget(text: 'Settings', icon: Icons.settings)),
                      GestureDetector(onTap: (){},child: IconSettingWidget(text: 'Payment Details', icon: Icons.payment)),
                      GestureDetector(onTap: (){},child: IconSettingWidget(text: 'Achivement', icon: Icons.send_and_archive)),
                      GestureDetector(onTap: (){},child: IconSettingWidget(text: 'Love', icon: Icons.heart_broken)),
                      GestureDetector(onTap: (){},child: IconSettingWidget(text: 'Learning Reminders', icon: Icons.add_box)),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

