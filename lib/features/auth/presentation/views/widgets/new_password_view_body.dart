import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_stack_image.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/login_view_body.dart';

import '../../../../../core/utils/app_router.dart';

class NewPasswordViewBody extends StatefulWidget {
  const NewPasswordViewBody({super.key});

  @override
  State<NewPasswordViewBody> createState() => _NewPasswordViewBodyState();
}

class _NewPasswordViewBodyState extends State<NewPasswordViewBody> {
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
                CustomAuthText(text: "reset new password".tr()),
                const SizedBox(
                  height: 45,
                ),
                CustomTextFormField(
                  onChanged: (value) {},
                  lableText: 'new password'.tr(),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required valu'.tr();
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  onChanged: (value) {},
                  lableText: 'confirm password'.tr(),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required value';
                    }
                  },
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomButon(
                  text: 'done'.tr(),
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).push(
                        AppRouter.homeView,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
