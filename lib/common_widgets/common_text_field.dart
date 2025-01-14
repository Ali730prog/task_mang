import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_color.dart';
import 'package:task_manage_ment/app_const/app_image.dart';

class CommonTextField extends StatefulWidget {
  final String text;
  final TextEditingController? textEditingController;
  final String? prefixImage;
  final String? suffixImage;

  const CommonTextField(
      {super.key,
      required this.text,
      this.prefixImage,
      this.suffixImage,
      this.textEditingController});

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * 0.90,
      height: h * 0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(06), color: AppColor.blue455A64),
      child: TextField(
        controller: widget.textEditingController,
       decoration: InputDecoration(
         contentPadding: EdgeInsets.only(left: w*0.03),
         prefix: Image.asset(AppImages.app_logo)
       ),
      ),
    );
  }
}
