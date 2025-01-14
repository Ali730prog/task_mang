import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manage_ment/app_const/app_color.dart';

class LightText extends StatefulWidget {
  final String text;
  final Color? textcolor;
  final double? textsize;
  final FontWeight? weight;

  const LightText(
      {super.key,
      required this.text,
      this.textcolor=AppColor.whiteFFFFFF,
      this.textsize=12,
      this.weight=FontWeight.w500, });

  @override
  State<LightText> createState() => _LightTextState();
}

class _LightTextState extends State<LightText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.inter(
        fontWeight: widget.weight,
        fontSize: widget.textsize,
        color: widget.textcolor,
      ),
    );
  }
}
