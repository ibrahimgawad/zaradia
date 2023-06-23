import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/setting/presentation/views/widgets/personal_information_view_body.dart';

class PersonalInformationView extends StatelessWidget {
  const PersonalInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PersonalInformationViewBody(),
    );
  }
}
