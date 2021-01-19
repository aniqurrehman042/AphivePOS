import 'package:aphive_pos/theme/app_dimensions.dart';
import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:aphive_pos/views/global/app_sized_box.dart';
import 'package:aphive_pos/views/global/offers_grid.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/offers_page/offers_page_view_model.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  static const tag = "OffersPage";

  final OffersPageViewModel _offersPageViewModel = OffersPageViewModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppDimensions.getOffersPagePadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Page Heading
          Text(
            'Active Orders',
            style: AppTextStyles.getSemiNormalTextStyle(),
          ),

          AppSizedBox.height4(),

          /// Orders Grid
          Expanded(
            child: OffersGrid(orders: _offersPageViewModel.orders),
          ),
        ],
      ),
    );
  }
}
