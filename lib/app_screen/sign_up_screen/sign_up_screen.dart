import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_image.dart';
import 'package:task_manage_ment/app_screen/sign_in_screen/sign_in_screen.dart';
import 'package:task_manage_ment/common_widgets/bold_text.dart';
import 'package:task_manage_ment/common_widgets/common_button.dart';
import 'package:task_manage_ment/common_widgets/common_text_field.dart';
import 'package:task_manage_ment/common_widgets/light_text.dart';

import '../../../app_const/app_color.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.blue212832,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: Container(
            width: w,
            height: h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Center(
                      child: Image.asset(
                        AppImages.app_logo,
                        width: w * 0.40,
                      )),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  BoldText(
                    text: "Create your account",
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  LightText(
                    text: "Full Name",
                    textcolor: AppColor.grey8CAAB9,
                    textsize: 15,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  CommonTextField(
                    prefixImage: AppImages.user,
                    hintText: 'Hafiz Arslan',
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  LightText(
                    text: "Email Address",
                    textcolor: AppColor.grey8CAAB9,
                    textsize: 15,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  CommonTextField(
                    prefixImage: AppImages.user,
                    hintText: 'BSsoloution@gmail.com',
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  LightText(
                    text: "Password",
                    textcolor: AppColor.grey8CAAB9,
                    textsize: 15,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  CommonTextField(
                    prefixImage: AppImages.password,
                    hintText: '••••••••',
                    isPassword: true,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LightText(
                        text: "Forgot Password",
                        textsize: 17,
                        textcolor: AppColor.grey8CAAB9,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  CommonButton(text: "Sign Up"),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          endIndent: 06,
                          indent: 06,
                          color: AppColor.whiteFFFFFF,
                        ),
                      ),
                      LightText(
                        text: "Or continue with",
                        textcolor: AppColor.grey8CAAB9,
                        textsize: 15,
                        weight: FontWeight.w500,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          endIndent: 06,
                          indent: 06,
                          color: AppColor.whiteFFFFFF,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.whiteFFFFFF,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    width: w * 90,
                    height: h * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.google_icon,width: w*0.10,),
                        SizedBox(
                          width: w * 0.03,
                        ),
                        LightText(
                          textsize: 18,
                          weight: FontWeight.w600,
                          text: "Google",
                          textcolor: AppColor.whiteFFFFFF,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      LightText(
                        textsize: 14,
                        weight: FontWeight.w500,
                        text: "Don’t have an account? ",
                        textcolor: AppColor.whiteFFFFFF,
                      ), GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SignInScreen()));
                        },
                        child: LightText(
                          textsize: 14,
                          weight: FontWeight.w500,
                          text: "Login",
                          textcolor: AppColor.yellowFED36A,
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
