import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manage_ment/app_const/app_color.dart';

class BoldText extends StatefulWidget {
  final String text;
  final double? textsize;
  final Color? textcolor;
  final FontWeight? weight;
  const BoldText(
      {super.key,
        required this.text,
        this.textsize=26.0,
        this.textcolor=AppColor.whiteFFFFFF,
        this.weight=FontWeight.w600});

  @override
  State<BoldText> createState() => _BoldTextState();
}

class _BoldTextState extends State<BoldText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.inter(
        fontWeight: widget.weight,
        fontSize:widget.textsize,
        color: widget.textcolor,
      ),
    );
  }
}