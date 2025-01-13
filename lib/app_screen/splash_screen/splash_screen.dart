import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manage_ment/app_const/app_color.dart';
import 'package:task_manage_ment/app_const/app_image.dart';
import 'package:task_manage_ment/common_widgets/common_button.dart';
import '../sign_in_screen/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => SignInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.blue212832,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.05,
              ),
              Center(
                  child: Image.asset(
                AppImages.splahImage,
                width: w * 0.85,
              )),
              Padding(
                padding: EdgeInsets.only(left: w * 0.06, top: h * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Manage",
                      style: GoogleFonts.lato(
                        fontSize: 60,
                        height: 0.7,
                        fontWeight: FontWeight.w700,
                        color: AppColor.whiteFFFFFF,
                      ),
                    ),
                    Text(
                      "Your",
                      style: GoogleFonts.lato(
                        textBaseline: TextBaseline.ideographic,
                        height: 1.4,
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                        color: AppColor.whiteFFFFFF,
                      ),
                    ),
                    Text(
                      "Task With",
                      style: GoogleFonts.lato(
                        fontSize: 60,
                        height: 0.9,
                        fontWeight: FontWeight.w700,
                        color: AppColor.whiteFFFFFF,
                      ),
                    ),
                    Text(
                      "Day Task",
                      style: GoogleFonts.lato(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: AppColor.yellowFED36A,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              CommonButton(
                  ontap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => SignInScreen()));
                  },
                  text: "Let's Start"),
              SizedBox(
                height: h * 0.04,
              )
            ],
          ),
        ),
      ),
    );
  }
}
