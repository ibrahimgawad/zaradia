import 'package:flutter/material.dart';

class CustomHomeText extends StatelessWidget {
  final String text;
  const CustomHomeText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 40,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
