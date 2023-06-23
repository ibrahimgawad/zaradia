import 'package:flutter/material.dart';

import 'custom_logo-widget.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: CustomLogoWidget(),
          );
        });
  }
}
