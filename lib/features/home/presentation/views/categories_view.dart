import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/categories_view_body.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CategoriesViewBody(),
      ),
    );
  }
}
