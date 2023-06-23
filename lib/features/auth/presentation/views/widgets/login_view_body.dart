import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:mypharmacy_app/features/splash/presentation/view/widgets/custom_logo-widget.dart';

import 'custom_stack_image.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // AutovalidateMode autovalidateMode = AutovalidateMode.always;

  @override
  Widget build(BuildContext context) {
    return Form(
      // autovalidateMode: autovalidateMode,
      key: formKey,
      child: ListView(
        children: [
          CustomStacImage(),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 37,
            ),
            child: CustomAuthText(
              text: 'login'.tr(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 38,
            ),
            child: CustomTextFormField(
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'required value'.tr();
                }
              },
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              lableText: 'email'.tr(),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 38,
            ),
            child: CustomTextFormField(
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'required value'.tr();
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.visiblePassword,
              lableText: 'password'.tr(),
              onChanged: (p0) {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 38,
            ),
            child: GestureDetector(
              onTap: () =>
                  GoRouter.of(context).push(AppRouter.forgetPasswardView),
              child: Text(
                'forget password'.tr(),
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 38,
            ),
            child: CustomButon(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  GoRouter.of(context).push(
                    AppRouter.homeView,
                  );
                }
              },
              text: 'login'.tr(),
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'have no account'.tr(),
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () => GoRouter.of(context).push(AppRouter.registerView),
                child: Text(
                  'create account'.tr(),
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomAuthText extends StatelessWidget {
  final String text;
  const CustomAuthText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
