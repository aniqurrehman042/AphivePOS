import 'package:aphive_pos/data/models/order.dart';
import 'package:aphive_pos/theme/app_dimensions.dart';
import 'package:flutter/material.dart';

import 'order_box.dart';

class OffersGrid extends StatelessWidget {
  OffersGrid({
    @required this.orders,
  });

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) => OrderBox(
        order: orders[index],
        orderNo: (index + 1).toString(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppDimensions.offersGridCrossAxisCount,
        crossAxisSpacing: AppDimensions.offersGridCrossAxisSpacing,
        mainAxisSpacing: AppDimensions.offersGridMainAxisSpacing,
        childAspectRatio: AppDimensions.offersGridChildAspectRatio,
      ),
    );
  }
}
