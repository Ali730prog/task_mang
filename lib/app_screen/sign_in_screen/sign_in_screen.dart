import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_image.dart';
import 'package:task_manage_ment/common_widgets/bold_text.dart';
import 'package:task_manage_ment/common_widgets/common_text_field.dart';
import 'package:task_manage_ment/common_widgets/light_text.dart';

import '../../../app_const/app_color.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.blue212832,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: w*0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: h*0.02,),
              Center(
                  child: Image.asset(
                AppImages.app_logo,
                width: w * 0.40,
              )),
              SizedBox(height: h*0.04,),
              BoldText(
                text: "Welcome Back!",
              ),
              SizedBox(height: h*0.004,),
              LightText(
                text: "Email Address",
              textcolor: AppColor.grey8CAAB9,
                textsize: 18,
              ),
              CommonTextField(text: 'asdf',),
              Text("Hello")
            ],
          ),
        ),
      ),
    );
  }
}
