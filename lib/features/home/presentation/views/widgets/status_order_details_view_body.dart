import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_category_image.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_details_item.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_details_text.dart';

class StatusOrderdetailsViewBody extends StatelessWidget {
  const StatusOrderdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kPrimaryPadding,
        child: Column(
          children: [
            const SizedBox(
              height: 34,
            ),
            const Row(
              children: [
                CustomArrowBackIcon(
                  color: Colors.black,
                  size: 18,
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      'طلب رقم :  ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '125563',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 47,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return StatusOrderDetailsItem();
              },
              itemCount: 3,
              physics: NeverScrollableScrollPhysics(),
            ),
            const SizedBox(
              height: 47,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOrderDetailsText(text: 'اجمالي الحساب'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOrderDetailsText(text: 'اجمالي المشتريات'),
                    CustomOrderDetailsText(text: '600'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOrderDetailsText(text: 'خدمة التوصيل'),
                    CustomOrderDetailsText(text: '20'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOrderDetailsText(text: 'المجموع'),
                    CustomOrderDetailsText(text: '620'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
