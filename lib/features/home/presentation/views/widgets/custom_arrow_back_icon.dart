import 'package:flutter/material.dart';

class CustomArrowBackIcon extends StatelessWidget {
  final Color? color;
  final double size;
  const CustomArrowBackIcon(
      {super.key, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(
        Icons.arrow_back_ios,
        size: size,
        color: color,
      ),
    );
  }
}
