import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'custom_add_gategory_to_basket.dart';
import 'custom_category_image.dart';
import 'custom_home_button.dart';

class StatusOrderItem extends StatelessWidget {
  const StatusOrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .15,
            child: CustomCategoryImage(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 19,
              ),
              child: Text(
                'الطرشوبي',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomStatusOrderTextRow(
              text1: 'رقم الطلب  :',
              text2: '   125563',
            ),
            CustomStatusOrderTextRow(
              text1: 'تاريخ الطلب :',
              text2: '   11/12/2020',
            ),
            CustomStatusOrderTextRow(
              text1: 'حالة الطلب  :',
              text2: '   تم الاستلام',
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomContainerSalary(
              // width: MediaQuery.of(context).size.width * .25,
              width: 56,
              height: 24,
              // height: MediaQuery.of(context).size.height * 0.035,

              borderRadius: BorderRadius.circular(6),
              fontSizeEgp: 8,
              fontSizeSalary: 13,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomHomeButon(
              onTap: () {
                GoRouter.of(context).push(
                  AppRouter.statusOrderDetailsView,
                );
              },
              text: 'المزيد',
              width: 84,
              // width: MediaQuery.of(context).size.width * .45,

              height: 24,
              // height: MediaQuery.of(context).size.height * 0.035,

              fontSize: 8,
            )
          ],
        )
      ],
    );
  }
}

class CustomStatusOrderTextRow extends StatelessWidget {
  final String text1;
  final String text2;

  const CustomStatusOrderTextRow({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 17,
      ),
      child: Row(
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
