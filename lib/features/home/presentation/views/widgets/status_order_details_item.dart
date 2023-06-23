import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_details_text.dart';

import 'custom_category_image.dart';

class StatusOrderDetailsItem extends StatelessWidget {
  const StatusOrderDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 29,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              // height: MediaQuery.of(context).size.height * 0.02,
              child: CustomCategoryImage(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 16,
                ),
                child: Text(
                  'كريم أساس سافورا',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 9,
                ),
                child: Row(
                  children: [
                    Text(
                      'EGP',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CustomOrderDetailsText(
                      text: '200',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.22,
          ),
          const Row(
            children: [
              Text(
                'الكميه : ',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              Text(
                '1',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
