import 'package:flutter/material.dart';

class CustomDetailsText extends StatelessWidget {
  final String text;
  const CustomDetailsText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
      ),
    );
  }
}
