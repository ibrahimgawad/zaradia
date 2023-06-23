import 'package:flutter/material.dart';

import 'colors_category_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  static const kNotesBox = 'notes_box';
  List<Color> kColors = const [
    Color(0xff3777FF),
    Color(0xffFFB5C2),
    Color(0xffFFE9CE),
    Color(0xffFFE156),
    Color(0xffFFBE86),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .04,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ColorsItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
