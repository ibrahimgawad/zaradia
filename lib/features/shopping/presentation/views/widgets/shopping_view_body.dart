import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_details_text.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_button.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_details_item.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_details_text.dart';

import 'basket_shopping_details_item.dart';

class ShoppingViewBody extends StatelessWidget {
  const ShoppingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: kPrimaryPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 34,
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Text(
                    'سلة المشتريات',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CustomDetailsText(text: 'الطرشوبي'),
                SizedBox(
                  height: 47,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return //MyHomePage();
                        BasketShoppingDetailsItem();
                  },
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                ),
                AddNoteContainer(),
                const SizedBox(
                  height: 15,
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
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomHomeButon(
                    text: 'التالي',
                    width: double.infinity,
                    height: 38,
                    fontSize: 12,
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.paymentView,
                      );
                    }),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class AddNoteContainer extends StatelessWidget {
  const AddNoteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        // height: 75,
        height: MediaQuery.of(context).size.height * .11,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
            .3,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: const TextField(
          cursorColor: kPrimaryColor,
          cursorHeight: 20,
          style: TextStyle(
            fontSize: 12,
          ),
          maxLines: 4,
          decoration: InputDecoration.collapsed(
            hintText: "اضافه ملاحظه",
            hintStyle: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ));
  }
}
