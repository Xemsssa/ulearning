import 'package:flutter/material.dart';
import 'package:ulearning/common/values/colors.dart';
import 'package:ulearning/pages/profile/widget/icon_setting_widget.dart';
import 'package:ulearning/pages/profile/widget/profile_button_widget.dart';

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
                  Icon(Icons.menu),
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
                  ProfileButtonWidget(text: 'My Courses' , icon:Icons.video_camera_back_rounded),
                  ProfileButtonWidget(text: 'Buy courses' , icon:Icons.book),
                  ProfileButtonWidget(text: '4.9' , icon:Icons.star),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Column(
                    children: [
                      IconSettingWidget(text: 'Settings', icon: Icons.settings),
                      IconSettingWidget(text: 'Payment Details', icon: Icons.payment),
                      IconSettingWidget(text: 'Achivement', icon: Icons.send_and_archive),
                      IconSettingWidget(text: 'Love', icon: Icons.heart_broken),
                      IconSettingWidget(text: 'Learning Reminders', icon: Icons.add_box),
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

