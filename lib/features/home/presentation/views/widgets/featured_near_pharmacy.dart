import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';

import 'custom_image_near_pharmacy.dart';

class FeaturedNearPharmacy extends StatelessWidget {
  const FeaturedNearPharmacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.pharmacyDetailsView,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: CustomImageNearPharmacy(),
            height: MediaQuery.of(context).size.height * .08,
          ),
          Text(
            'الطرشوبي',
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                '25',
                style: TextStyle(
                  fontSize: 7,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'دقيقه',
                style: TextStyle(
                  fontSize: 7,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
