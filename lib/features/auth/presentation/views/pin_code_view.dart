import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/pin_code_view_body.dart';

class PinCodeView extends StatelessWidget {
  const PinCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: PinCodeViewBody(),
    );
  }
}
