import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/pharmacy_details_view_body.dart';

class PharmacyDetailsView extends StatelessWidget {
  const PharmacyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PharmacyDetailsViewBody(),
    );
  }
}
