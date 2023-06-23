import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_stack_image.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/login_view_body.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomStacImage(
          arowIcon: Icons.arrow_back_ios,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 38,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAuthText(text: 'reset new password'.tr()),
                const SizedBox(
                  height: 35,
                ),
                CustomTextFormField(
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {},
                  lableText: 'number'.tr(),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required value'.tr();
                    }
                  },
                ),
                const SizedBox(
                  height: 47,
                ),
                CustomButon(
                  text: 'next'.tr(),
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).push(AppRouter.pinCodeView);
                    }
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
