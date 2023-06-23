import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_details_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../home/presentation/views/widgets/custom_category_image.dart';

class BasketShoppingDetailsItem extends StatefulWidget {
  const BasketShoppingDetailsItem({
    super.key,
  });

  @override
  State<BasketShoppingDetailsItem> createState() =>
      _BasketShoppingDetailsItemState();
}

class _BasketShoppingDetailsItemState extends State<BasketShoppingDetailsItem> {
  int number = 0;
  late int myVariable = 0;
  late SharedPreferences prefs;

  void initState() {
    super.initState();
    _loadVariable();
  }

  Future<void> _loadVariable() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      myVariable = prefs.getInt('myVariable') ?? 0;
    });
  }

  Future<void> _saveVariable() async {
    await prefs.setInt('myVariable', myVariable);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 29,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.20,
            // height: MediaQuery.of(context).size.height * 0.02,
            child: CustomCategoryImage(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
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
                padding: const EdgeInsetsDirectional.only(
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
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: IconButton(
                    padding: EdgeInsets.only(top: 12),
                    onPressed: () {
                      setState(() {
                        _loadVariable();
                        myVariable++;
                        _saveVariable();
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    '$myVariable',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        myVariable--;
                        if (myVariable < 0) {
                          myVariable = 0;
                        }
                        _saveVariable();
                      });
                    },
                    icon: const Icon(
                      Icons.minimize,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
