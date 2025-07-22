import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/common/values/colors.dart';
import 'package:ulearning/pages/Log_in/widget/heading_widget.dart';
import 'package:ulearning/pages/Log_in/widget/text_input_widget.dart';
import 'package:ulearning/pages/welcome/widgets/button_widget.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  get textEditingController => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                // icon: Icon(Icons.chat_bubble),
                text: "Log In",
              ),
              Tab(
                // icon: Icon(Icons.video_call),
                text: "Sign Up",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      reusableWidget('google'),
                      reusableWidget('apple'),
                      reusableWidget('facebook'),
                    ],
                  ),
                ),
                const Text('Or use your email account login'),
                const SizedBox(
                  height: 70,
                ),
                HeadingWidget(text: 'User name'),
                TextInputWidget(
                    textEditingController: textEditingController,
                    text: "Robert Nicolas",
                    icon: Icons.person),
                const SizedBox(
                  height: 20,
                ),
                HeadingWidget(text: 'Password'),
                TextInputWidget(
                    textEditingController: textEditingController,
                    text: "Password",
                    icon: Icons.safety_check),
                // const SizedBox(
                //   height: 140,
                // ),

                Spacer(),
                ButtonWidget(
                  text: 'Log In ',
                  color: AppColors.primaryElement,
                  textColor: AppColors.primaryBackground,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {},
                    child: ButtonWidget(
                        text: 'Sign In',
                        color: AppColors.primaryBackground,
                        textColor: AppColors.primaryText))
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                const Text('Or use your email account login'),
                const SizedBox(
                  height: 70,
                ),
                HeadingWidget(text: 'User name'),
                TextInputWidget(
                    textEditingController: textEditingController,
                    text: "Robert Nicolas",
                    icon: Icons.person),
                const SizedBox(
                  height: 20,
                ),
                HeadingWidget(text: "Phone or mail"),
                TextInputWidget(
                    textEditingController: textEditingController,
                    text: "Email",
                    icon: Icons.safety_check),
                const SizedBox(
                  height: 20,
                ),
                HeadingWidget(text: "Password"),
                TextInputWidget(
                    textEditingController: textEditingController,
                    text: "Password",
                    icon: Icons.person),
                const SizedBox(
                  height: 20,
                ),
                HeadingWidget(text: "Confirm Password"),
                TextInputWidget(
                    textEditingController: textEditingController,
                    text: "Password",
                    icon: Icons.safety_check),
                // const SizedBox(height: 50),
                Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: ButtonWidget(
                      text: 'Sign up ',
                      color: AppColors.primaryElement,
                      textColor: AppColors.primaryText,
                    )),
              ],
              // ),
              // ],
            )
          ],
        ),
      ),
    );
  }
}

Widget reusableWidget(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      height: 40,
      width: 40,
      child: Image.asset('assets/images/${iconName}.jpeg'),
    ),
  );
}
