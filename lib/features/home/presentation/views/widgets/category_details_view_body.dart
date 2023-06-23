import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_add_gategory_to_basket.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_category_image.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_button.dart';

import 'category_image_list_view.dart';
import 'colors_of_category_list_view.dart';
import 'custom_category_details_row.dart';
import 'custom_details_text.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                      aspectRatio: 4.9 / 3.5,
                      child: Image.asset('assets/images/Mask Group 1.png'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                      top: 60,
                      start: 32,
                    ),
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: kPrimaryColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 5,
                      ),
                      child: CustomArrowBackIcon(
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 55,
                          bottom: 6,
                        ),
                        child: Text(
                          "كريم أساس سافورا",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CustomDetailsText(
                        text: 'صيدلية الطرشوبي',
                      ),
                    ],
                  ),
                  Padding(
                    padding: kPrimaryPadding,
                    child: CustomContainerSalary(
                      width: 67,
                      height: 33,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8,
                        ),
                      ),
                      fontSizeEgp: 11,
                      fontSizeSalary: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              const CustomCategoryDetailsRow(
                text: 'شارع الترعة اعلي اهل الشام المنصورة الدقهلية',
                icon: Icons.location_on_rounded,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomCategoryDetailsRow(
                text: '25    دقيقيه',
                icon: Icons.delivery_dining,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomCategoryDetailsRow(
                text: '01254665155',
                icon: Icons.phone,
              ),
              const SizedBox(
                height: 17,
              ),
              const Padding(
                padding: kPrimaryPadding,
                child: SizedBox(
                  width: double.infinity,
                  height: 111,
                  child: CategoryImageListView(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 42,
                ),
                child: Text(
                  "الاختيارات",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 38,
                ),
                child: ColorsListView(),
              ),
              const SizedBox(
                height: 21,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 42,
                ),
                child: Text(
                  "الوصف",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 38,
                ),
                child: Text(
                  ' خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" ',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 38,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomHomeButon(
                        text: 'إضافة الي السلة',
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
              const SizedBox(
                height: 61,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
