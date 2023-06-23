import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_stack_image.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/login_view_body.dart';

import '../../../../../core/utils/app_router.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
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
                CustomAuthText(text: 'create account'.tr()),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required value'.tr();
                    }
                  },
                  onChanged: (value) {},
                  lableText: 'name'.tr(),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required value'.tr();
                    }
                  },
                  onChanged: (value) {},
                  lableText: 'phone number'.tr(),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required value'.tr();
                    }
                  },
                  onChanged: (value) {},
                  lableText: 'adrress'.tr(),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'required value'.tr();
                    }
                  },
                  onChanged: (value) {},
                  lableText: 'password'.tr(),
                ),
                const SizedBox(
                  height: 36,
                ),
                CustomButon(
                  text: 'create account'.tr(),
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).push(
                        AppRouter.homeView,
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 72,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
