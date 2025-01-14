import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_image.dart';
import 'package:task_manage_ment/app_screen/sign_in_screen/sign_in_screen.dart';
import 'package:task_manage_ment/common_widgets/bold_text.dart';
import 'package:task_manage_ment/common_widgets/common_button.dart';
import 'package:task_manage_ment/common_widgets/common_profile_textfield.dart';
import 'package:task_manage_ment/common_widgets/common_text_field.dart';
import 'package:task_manage_ment/common_widgets/light_text.dart';

import '../../../app_const/app_color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true
          ,
          backgroundColor: AppColor.blue212832,
          title: BoldText(text: "Profile",weight: FontWeight.w500,),
        ),
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
                      child: Stack(
                        children:[ Container(
                          width: w*0.40,
                          height: h*0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2,color: AppColor.yellowFED36A)
                          ),
                          child: Center(
                            child: Image.asset(
                              AppImages.avatar_1,
                              width: w * 0.29,
                              height: h * 0.40,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                            top: h*0.09,
                            left: w*0.28,
                            child: Container(
                              width: w*0.10,
                              height: h*0.06,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.grey1E1E1E
                              ),
                              child: Center(
                                child: Image.asset(AppImages.plus_icon,
                                  width: w*0.07,
                                  height: h*0.04,
                                                             ),
                              ),
                            )
                        )
                        ]
                      )),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  CommonProflleTextField(
                    prefixImage: AppImages.name,
                    hintText: 'Hafiz Arslan',
                  ),

                  SizedBox(
                    height: h * 0.01,
                  ),
                  CommonProflleTextField(
                    prefixImage: AppImages.user,
                    hintText: 'HafizArslan@gmail.com',
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  CommonProflleTextField(
                    prefixImage: AppImages.user,
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
