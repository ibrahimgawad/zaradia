import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_gride_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_text.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_search_back.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_search_row.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/featured_near_pharmacy.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 28,
                ),
                const CustomSearchBack(),
                const SizedBox(
                  height: 18,
                ),
                CustomHomeText(text: 'offers'.tr()),
                const SizedBox(
                  height: 19,
                ),
                const CustomGrideView(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
