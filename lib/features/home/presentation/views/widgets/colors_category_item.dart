import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            child: Container(
              width: 30,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(
                    6,
                  )),
            ),
          )
        : Container(
            width: 32,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
          );
  }
}
