import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_image.dart';
import 'package:task_manage_ment/common_widgets/bold_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: h*0.05,),
              Center(child: Image.asset(AppImages.splahImage,width: w*0.85,)),
              SizedBox(height: h*0.10,),
              BoldText()
            ],
          ),
        ),
      ),
    );
  }
}
