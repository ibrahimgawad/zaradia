import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/status_order_item.dart';

class StatusOrderListViewItem extends StatelessWidget {
  const StatusOrderListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(
            bottom: 22,
          ),
          child: StatusOrderItem(),
        );
      },
      itemCount: 10,
    );
  }
}
