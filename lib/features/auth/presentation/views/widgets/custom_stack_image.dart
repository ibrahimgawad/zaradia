import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/login_view_body.dart';

import '../../../../splash/presentation/view/widgets/custom_logo-widget.dart';

class CustomStacImage extends StatelessWidget {
  IconData? arowIcon;
  CustomStacImage({this.arowIcon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_image.png'),
        Padding(
          padding: const EdgeInsets.only(
            top: 78,
          ),
          child: CustomLogoWidget(
            icon: arowIcon,
          ),
        ),
      ],
    );
  }
}
