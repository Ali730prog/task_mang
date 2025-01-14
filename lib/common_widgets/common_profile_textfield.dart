import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manage_ment/app_const/app_color.dart';
import 'package:task_manage_ment/app_const/app_image.dart';

class CommonProflleTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? textEditingController;
  final String? prefixImage;
  final bool isPassword;
  final VoidCallback? ontap;
  final String? sufixIcon;

  const CommonProflleTextField({
    super.key,
    required this.hintText,
    this.prefixImage,
    this.isPassword = false,
    this.textEditingController,
    this.ontap,
    this.sufixIcon,
  });

  @override
  State<CommonProflleTextField> createState() => _CommonProflleTextFieldState();
}

class _CommonProflleTextFieldState extends State<CommonProflleTextField> {
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
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: ImageIcon(
                      AssetImage(widget.prefixImage!),
                      size: w * 0.06,
                      color: AppColor.grey8CAAB9,
                    ),
                  )
                : null,
            suffixIcon: IconButton(
                onPressed: () {
                  widget.ontap;
                },
                icon: widget.sufixIcon != null
                    ? ImageIcon(
                        AssetImage(widget.sufixIcon.toString()),
                        color: AppColor.grey8CAAB9,
                      )
                    : ImageIcon(
                        AssetImage(AppImages.edit_icon),
                        color: AppColor.grey8CAAB9,
                      )),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 19,
              color: AppColor.whiteFFFFFF,
            ),
            contentPadding: EdgeInsets.only(left: w * 0.10, top: h * 0.03 / 2),
          ),
        ),
      ),
    );
  }
}
