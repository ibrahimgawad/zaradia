import 'package:flutter/material.dart';

import 'featured_near_pharmacy.dart';

class CustomGrideView extends StatelessWidget {
  const CustomGrideView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsetsDirectional.only(
        start: 38,
        end: 20,
      ),
      itemCount: 100,
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, childAspectRatio: .7),
      itemBuilder: (context, index) {
        return const FeaturedNearPharmacy();
      },
    );
  }
}
