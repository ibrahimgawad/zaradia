import 'package:flutter/material.dart';

import 'custom_category_image.dart';

class CategoryImageListView extends StatelessWidget {
  const CategoryImageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CustomCategoryImage(
          borderRadius: BorderRadius.circular(10),
        ),
        SizedBox(
          width: 8,
        ),
        CustomCategoryImage(
          borderRadius: BorderRadius.circular(10),
        ),
        SizedBox(
          width: 8,
        ),
        CustomCategoryImage(
          borderRadius: BorderRadius.circular(10),
        ),
      ],
    );
  }
}
