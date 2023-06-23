import 'package:flutter/material.dart';

import 'categories_view_body.dart';
import 'custom_add_gategory_to_basket.dart';

class CustomAddCategoryToBasketGrideView extends StatelessWidget {
  const CustomAddCategoryToBasketGrideView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsetsDirectional.only(
        start: 38,
        end: 20,
      ),
      itemCount: 100,
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .36,
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return const CustomAddCategoryToBasket();
      },
    );
  }
}
