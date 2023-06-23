import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_near_pharmacy_list_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/featured_near_pharmacy.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/featured_product_list_view.dart';

import 'custom_home_text.dart';
import 'custom_image_near_pharmacy.dart';
import 'custom_category_image.dart';
import 'custom_search_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchRow(),
                CustomHomeText(
                  text: 'categories'.tr(),
                ),
                const FeaturedProductListView(),
                const SizedBox(
                  height: 28,
                ),
                CustomHomeText(text: 'Pharmacies near you'.tr()),
                const SizedBox(
                  height: 19,
                ),
                const CustomNearPharmacyListView(),
                const SizedBox(
                  height: 17.3,
                ),
                Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 38,
                    ),
                    child: CustomMoreTextRow(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.nearPharmacyView);
                      },
                    )),
                const SizedBox(
                  height: 16,
                ),
                CustomHomeText(text: 'offers'.tr()),
                const SizedBox(
                  height: 19,
                ),
                const CustomNearPharmacyListView(),
                const SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    end: 38,
                    bottom: 10,
                  ),
                  child: CustomMoreTextRow(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.offersView);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMoreTextRow extends StatelessWidget {
  void Function()? onTap;
  CustomMoreTextRow({
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            'more'.tr(),

            // textAlign: TextAlign.end,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
