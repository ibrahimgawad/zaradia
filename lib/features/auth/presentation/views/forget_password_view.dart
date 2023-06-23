import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: ForgetPasswordViewBody(),
    );
  }
}
