import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_add_gategory_to_basket.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_category_image.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_button.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_text.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_item.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_list_view_item.dart';

class StatusOrderViewBody extends StatelessWidget {
  const StatusOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 38,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    CustomArrowBackIcon(
                      color: Colors.black,
                      size: 18,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'حاله الطلب',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                StatusOrderListViewItem()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
