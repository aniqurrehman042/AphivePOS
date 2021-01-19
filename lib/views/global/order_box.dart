import 'package:aphive_pos/data/models/order.dart';
import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:aphive_pos/theme/app_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

import 'default_button.dart';

class OrderBox extends StatelessWidget {
  OrderBox({
    this.order,
    this.orderNo,
  });

  final Order order;
  final String orderNo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Order No Text
        Text(
          'Order $orderNo',
          style: AppTextStyles.getSemiNormalTextStyle(),
        ),

        SizedBox(height: 20.r),

        Container(
          padding: EdgeInsets.all(25.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
            border: Border.all(
              color: primaryBlue,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Order name heading
              Text(
                'Order name',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Order name
              Text(
                order.orderName,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Order description heading
              Text(
                'Order description',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Order description
              Text(
                order.orderDescription,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Order validity heading
              Text(
                'Validity',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Order validity
              Text(
                order.fulfillmentPeriod,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Order value heading
              Text(
                'Order value',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Order value
              Text(
                order.orderValue,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Order available quantity heading
              Text(
                'Available quantity',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Order available quantity
              Text(
                order.quantity,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              SizedBox(height: 120.r),

              /// Edit Quantity Button
              DefaultButton(
                color: accentPurple,
                title: 'Edit quantity',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => DialogUtils.getEditQuantityDialog(
                        context: context,
                        orderName: order.orderName,
                        onExit: () {
                          Navigator.of(context).pop();
                        }),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
