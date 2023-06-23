import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypharmacy_app/constant.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 1,
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: bulidOutlineInputBorder(),
            focusedBorder: bulidOutlineInputBorder(),
            hintText: 'search'.tr(),
            contentPadding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
            ),
            prefixIcon: IconButton(
              padding: const EdgeInsetsDirectional.only(
                start: 15,
              ),
              onPressed: () {},
              icon: const Opacity(
                opacity: .8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: kPrimaryColor,
                  size: 20,
                ),
              ),
            ),
            hintStyle: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder bulidOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      borderRadius: BorderRadius.circular(
        10,
      ),
    );
  }
}
