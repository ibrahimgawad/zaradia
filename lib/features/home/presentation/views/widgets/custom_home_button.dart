import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class CustomHomeButon extends StatelessWidget {
  CustomHomeButon(
      {this.onTap,
      required this.text,
      required this.width,
      required this.height,
      required this.fontSize});
  VoidCallback? onTap;
  final double width;
  final double height;
  final double fontSize;

  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        width: width,
        // width: 100,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
