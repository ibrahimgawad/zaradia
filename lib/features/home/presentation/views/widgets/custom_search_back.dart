import 'package:flutter/material.dart';

import '../neare_pharmacy_view.dart';
import 'custom_arrow_back_icon.dart';
import 'custom_search_text_field.dart';

class CustomSearchBack extends StatelessWidget {
  const CustomSearchBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 32),
      child: Row(
        children: [
          CustomArrowBackIcon(
            color: Colors.black,
            size: 20,
          ),
          SizedBox(
            width: 7,
          ),
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
