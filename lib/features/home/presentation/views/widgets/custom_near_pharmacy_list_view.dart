import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_stack_image.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/featured_near_pharmacy.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/home_view_body.dart';

import 'custom_image_near_pharmacy.dart';
import 'custom_category_stac.dart';

class CustomNearPharmacyListView extends StatelessWidget {
  const CustomNearPharmacyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 30,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: FeaturedNearPharmacy(),
              );
            }),
      ),
    );
  }
}
