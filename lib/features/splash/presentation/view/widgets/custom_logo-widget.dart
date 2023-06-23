import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomLogoWidget extends StatelessWidget {
  IconData? icon;
  CustomLogoWidget({this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 5,
            end: 30,
          ),
          child: Icon(
            icon,
            color: const Color(0xff3D3D6F),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Image.asset(
          'assets/images/logo.png',
          width: 38,
          height: 47,
        ),
        Text(
          'app name'.tr(),
          style: const TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
