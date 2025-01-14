import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manage_ment/app_const/app_color.dart';

class CommonTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? textEditingController;
  final String? prefixImage;
  final bool isPassword;

  const CommonTextField({
    super.key,
    required this.hintText,
    this.prefixImage,
    this.isPassword = false,
    this.textEditingController,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      width: w * 0.90,
      height: h * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColor.blue455A64,
      ),
      child: Center(
        child: TextField(
          controller: widget.textEditingController,
          obscureText: widget.isPassword && !isShowPassword,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColor.whiteFFFFFF,
          ),
          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            border: InputBorder.none,
            prefixIcon: widget.prefixImage != null
                ? Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child: ImageIcon(
                AssetImage(widget.prefixImage!),
                size: w * 0.06,
                color: AppColor.whiteFFFFFF,
              ),
            )
                : null,
            suffixIcon: widget.isPassword
                ? IconButton(
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
              icon: Icon(
                isShowPassword
                    ? CupertinoIcons.eye
                    : CupertinoIcons.eye_slash,
                color: Colors.white,
                size: 24,
              ),
            )
                : null,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColor.whiteFFFFFF.withOpacity(0.6),
            ),
            contentPadding: EdgeInsets.only(left: w*0.10,top: h*0.03/2),
          ),
        ),
      ),
    );
  }
}
