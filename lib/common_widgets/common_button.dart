import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_color.dart';
import 'package:task_manage_ment/common_widgets/light_text.dart';

class CommonButton extends StatefulWidget {
  final double? width;
  final double? height;
  final String text;
  final Border? border;
  final Color? borderColor;
  final Color? color;
  final VoidCallback? ontap;
  final Color? textColor;

  const CommonButton({
    super.key,
    this.width = 0.9,
    this.height = 0.07,
    required this.text,
    this.color = AppColor.yellowFED36A,
    this.ontap,
    this.textColor = AppColor.black000000,
    this.border,
    this.borderColor = AppColor.black000000,
  });

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: widget.ontap,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: widget.color,
            border: widget.border ??
                Border.all(
                  color: widget.borderColor ?? Colors.black,
                  width: 1.0,
                ),
            borderRadius: BorderRadius.circular(6),
          ),
          width: w * (widget.width ?? 1.0),
          height: h * (widget.height ?? 0.1),
          child: Center(
            child: LightText(
             textsize: 13,
              weight: FontWeight.w700,
              text: widget.text,
              textcolor: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
