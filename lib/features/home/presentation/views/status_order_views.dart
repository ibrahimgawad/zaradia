import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_view_body.dart';

class StatusOrderView extends StatelessWidget {
  const StatusOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StatusOrderViewBody(),
    );
  }
}
