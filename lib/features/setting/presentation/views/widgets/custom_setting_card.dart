import 'package:flutter/material.dart';

class CustomSettingCard extends StatelessWidget {
  final String text;
  const CustomSettingCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Icon(
                Icons.arrow_back_ios,
                size: 18,
                textDirection: TextDirection.ltr,
              )
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.072,
    );
  }
}
