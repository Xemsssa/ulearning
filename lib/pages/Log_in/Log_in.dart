import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        bottom: TabBar(
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
              Wrap(
                children: List.generate(3, (generator) => const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/learning.jpeg'),
                  ),
                )),
              ),
              Text('Or use your email account login'),

              SizedBox(height: 70,),

              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Text("User name"),
                )),
              TextInputWidget(textEditingController: textEditingController, text: "Robert Nicolas", icon: Icons.person),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Text("User name"),
                )),
              TextInputWidget(textEditingController: textEditingController, text: "Password", icon: Icons.safety_check),

              SizedBox(height: 140,),
              ButtonWidget(text: 'Log In ', color: Colors.blueAccent, textColor: Colors.white,),
              SizedBox(height: 20,),
              ButtonWidget(text: 'Sign In', color: Colors.white, textColor: Colors.black)

            ],
            ),
          Center(
            child: Text("Calls"),
          ),
        ],
      ),
    ),
    );
  }
}