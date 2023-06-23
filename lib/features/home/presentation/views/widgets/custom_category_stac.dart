import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';

import '../../../../../constant.dart';
import 'custom_category_image.dart';

class CustomCategorytStac extends StatelessWidget {
  const CustomCategorytStac({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.categoriesView);
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 110,
            width: 120,
            child: CustomCategoryImage(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Container(
            width: 120,
            height: 40,
            child: Center(
              child: CustomCategoryText(
                text: 'مستحضرات التجميل',
                size: 11,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: kPrimaryColor.withOpacity(.7),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCategoryText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const CustomCategoryText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
