import 'package:aphive_pos/theme/text_styles.dart';
import 'package:aphive_pos/views/global/order_box.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/offers_page/offers_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:get/get.dart';

class OffersPage extends StatelessWidget {
  static const tag = "OffersPage";

  final OffersPageViewModel _offersPageViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 100.r,
        vertical: 50.r,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Page Heading
          Text(
            'Active Orders',
            style: AppTextStyles.getSemiNormalTextStyle(),
          ),

          SizedBox(height: 40.r),

          /// Orders Grid
          Expanded(
            child: GridView.builder(
              itemCount: _offersPageViewModel.orders.length,
              itemBuilder: (context, index) => OrderBox(
                order: _offersPageViewModel.orders[index],
                orderNo: (index + 1).toString(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 100.r,
                mainAxisSpacing: 100.r,
                childAspectRatio: 0.55,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
