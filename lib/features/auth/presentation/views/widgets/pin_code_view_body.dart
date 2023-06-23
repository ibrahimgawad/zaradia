import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_stack_image.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeViewBody extends StatefulWidget {
  const PinCodeViewBody({super.key});

  @override
  State<PinCodeViewBody> createState() => _PinCodeViewBodyState();
}

class _PinCodeViewBodyState extends State<PinCodeViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomStacImage(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 38,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomAuthText(text: "reset new password".tr()),
                const SizedBox(
                  height: 37,
                ),
                PinCodeTextField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required value'.tr();
                    }
                  },
                  length: 5,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    activeFillColor: Colors.white,
                    inactiveColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.grey,
                    selectedColor: kPrimaryColor,
                    activeColor: Colors.green,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 43,
                    fieldWidth: 48,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  appContext: (context),
                  onChanged: (String value) {},
                ),
                Text(
                  'send again'.tr(),
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                CustomButon(
                    text: 'next'.tr(),
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.newPasswardView,
                      );
                    })
              ],
            ),
          ),
        )
      ],
    );
  }
}
