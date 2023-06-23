import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';

import '../../../../../constant.dart';
import 'custom_category_image.dart';
import 'custom_home_button.dart';

class CustomAddCategoryToBasket extends StatelessWidget {
  const CustomAddCategoryToBasket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .21,
              // height: 100,
              child: CustomCategoryImage(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    6,
                  ),
                  topRight: Radius.circular(
                    6,
                  ),
                ),
              ),
            ),
            const CustomContainerSalary(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(
                  15,
                ),
              ),
              width: 44,
              height: 24,
              fontSizeEgp: 7,
              fontSizeSalary: 9,
            ),
          ],
        ),
        const Text(
          'كريم أساس سافورا',
          // softWrap: true,
          // maxLines: 1,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          // maxLines: 2,
          'صيدلية الطرشوبي',
          style: TextStyle(
            fontSize: 9,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        CustomHomeButon(
          width: MediaQuery.of(context).size.width * .28,
          height: 30,
          fontSize: 8,
          text: 'إضافة الي السلة',
          onTap: () {
            GoRouter.of(context).push(AppRouter.categoryDetailsView);
          },
        )
      ],
    );
  }
}

class CustomContainerSalary extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final double fontSizeEgp;
  final double fontSizeSalary;

  const CustomContainerSalary({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.fontSizeEgp,
    required this.fontSizeSalary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Color(0xffE1D8C3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'EGP',
            style: TextStyle(fontSize: fontSizeEgp, color: kPrimaryColor),
          ),
          Text(
            '200',
            style: TextStyle(
                fontSize: fontSizeSalary,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
