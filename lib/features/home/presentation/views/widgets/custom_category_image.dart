import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';

class CustomCategoryImage extends StatelessWidget {
  BorderRadiusGeometry? borderRadius;
  CustomCategoryImage({
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.3 / 3.8,
      child: Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: borderRadius,
            image: const DecorationImage(
              image: AssetImage('assets/images/Rectangle 10.png'),
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
