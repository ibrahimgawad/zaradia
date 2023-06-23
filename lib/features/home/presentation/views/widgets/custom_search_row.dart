import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';

import 'custom_search_text_field.dart';

class CustomSearchRow extends StatelessWidget {
  const CustomSearchRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 37,
        start: 38,
        end: 38,
        bottom: 24,
      ),
      child: Row(
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            width: 18,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.statusOrderView);
            },
            child: Image.asset(
              'assets/images/Icon material-shopping-basket.png',
              width: 23,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
