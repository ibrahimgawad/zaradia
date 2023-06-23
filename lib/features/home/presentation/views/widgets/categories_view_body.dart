import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_category_stac.dart';

import 'custom_add_category_to_basket_gride_view.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 32,
                ),
                child: CustomArrowBackIcon(
                  color: Colors.black,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 48,
                ),
                child: CustomCategoryText(
                  text: 'مستحضرات التجميل ',
                  size: 14,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 19,
              ),
              SizedBox(
                child: CustomAddCategoryToBasketGrideView(),
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        )
      ],
    );
  }
}
