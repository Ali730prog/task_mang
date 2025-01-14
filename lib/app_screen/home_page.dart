import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_color.dart';
import 'package:task_manage_ment/common_widgets/bold_text.dart';
import 'package:task_manage_ment/common_widgets/light_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            LightText(
              text: "Welcome Back!",
              textcolor: AppColor.yellowFED36A,
            ),
            BoldText( text: ,),
          ],
        ),
      ),
    );
  }
}
