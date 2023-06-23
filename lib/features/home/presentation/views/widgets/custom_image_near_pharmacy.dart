import 'package:flutter/material.dart';

class CustomImageNearPharmacy extends StatelessWidget {
  const CustomImageNearPharmacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2.6,
      child: Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                  'assets/images/clogo_2018-08-02-13-32-50_b7tjXmVP4Tt4ZIiZnqD8wgXX.png'),
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
