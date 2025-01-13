import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoldText extends StatefulWidget {
  const BoldText({super.key});

  @override
  State<BoldText> createState() => _BoldTextState();
}

class _BoldTextState extends State<BoldText> {
  @override
  Widget build(BuildContext context) {
    return Text("bold Text",style: GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 26,
      color: Colors.white,
    ),);
  }
}
