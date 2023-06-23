import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/register_view_body.dart';

class RegesterView extends StatelessWidget {
  const RegesterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: RegisterViewBody(),
    );
  }
}
