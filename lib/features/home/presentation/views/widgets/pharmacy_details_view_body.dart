import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_add_category_to_basket_gride_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_text.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_image_near_pharmacy.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_search_text_field.dart';

import 'custom_category_details_row.dart';
import 'custom_home_button.dart';

class PharmacyDetailsViewBody extends StatelessWidget {
  const PharmacyDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 38,
                    ),
                    child: CustomArrowBackIcon(
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 35, start: 67),
                    child: SizedBox(
                      child: CustomImageNearPharmacy(),
                      width: 138,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 38,
                ),
                child: Text(
                  'صيدلية الطرشوبي',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              CustomCategoryDetailsRow(
                text: 'شارع الترعة اعلي اهل الشام المنصورة الدقهلية',
                icon: Icons.location_on_rounded,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCategoryDetailsRow(
                text: '25    دقيقيه',
                icon: Icons.delivery_dining,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCategoryDetailsRow(
                text: '01254665155',
                icon: Icons.phone,
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 38,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomHomeButon(
                        text: 'مراسله',
                        fontSize: 12,
                        width: MediaQuery.of(context).size.width * .4,
                        height: 46,
                      ),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .4,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'اتصل الان',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: kPrimaryPadding,
                child: CustomSearchTextField(),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 15),
                child: CustomAddCategoryToBasketGrideView(),
              )
            ],
          ),
        )
      ],
    ));
  }
}
