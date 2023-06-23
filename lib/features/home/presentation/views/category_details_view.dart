import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/category_details_view_body.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoryDetailsViewBody(),
    );
  }
}
