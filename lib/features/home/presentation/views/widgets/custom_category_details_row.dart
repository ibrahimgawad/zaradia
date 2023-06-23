import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import 'category_details_view_body.dart';
import 'custom_details_text.dart';

class CustomCategoryDetailsRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomCategoryDetailsRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 38,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: kPrimaryColor,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
          CustomDetailsText(
            text: text,
          ),
        ],
      ),
    );
  }
}
