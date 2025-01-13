import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  const CommonButton({super.key});

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h,
      child: Center(
        child: Text(""),
      ),
    );
  }
}
