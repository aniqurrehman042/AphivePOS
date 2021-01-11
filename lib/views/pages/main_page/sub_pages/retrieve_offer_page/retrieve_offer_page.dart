import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/theme/text_styles.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/default_button.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/retrieve_offer_page/retrieve_offer_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:get/get.dart';

class RetrieveOfferPage extends StatelessWidget {
  static const tag = 'RetrieveOfferPage';

  final RetrieveOfferPageViewModel _retrieveOfferPageViewModel = Get.find();
  final MainPageCubit _mainPageCubit = Get.find();

  @override
  Widget build(BuildContext context) {
    /// Container for padding
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 300.r,
        vertical: 120.r,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Headings Area
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Offer ID
              Text(
                'Offer ID: ABC12345XYZ',
                style: AppTextStyles.getSmallBlueHeadingTextStyle(),
              ),

              /// Offer Status Area
              Row(
                children: [
                  Text(
                    'Offer status',
                    style: AppTextStyles.getSmallBlueHeadingTextStyle(),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    'Live',
                    style: AppTextStyles.getSmallGreenHeadingTextStyle(),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 30.h),

          /// Offer Details
          /// Offer Name
          Text(
            _retrieveOfferPageViewModel.offer.offerName,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          SizedBox(height: 30.h),

          /// Offer Description
          Text(
            _retrieveOfferPageViewModel.offer.offerDescription,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          SizedBox(height: 30.h),

          /// Offer Quantity
          Text(
            _retrieveOfferPageViewModel.offer.quantity,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          SizedBox(height: 30.h),

          /// Offer Value
          Text(
            _retrieveOfferPageViewModel.offer.offerValue,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          SizedBox(height: 30.h),

          /// Offer Fulfillment Period
          Text(
            _retrieveOfferPageViewModel.offer.fulfillmentPeriod,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          SizedBox(height: 30.h),

          /// Offer Refundable Status
          Text(
            _retrieveOfferPageViewModel.offer.refundableStatus,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          SizedBox(height: 30.h),

          /// Username
          Text(
            _retrieveOfferPageViewModel.offer.username,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          SizedBox(height: 60.h),

          /// Buttons Area
          Row(
            children: [
              Expanded(
                /// Fulfil Button
                child: DefaultButton(
                  title: 'Fulfil',
                  fontSize: 36.nsp,
                  color: primaryBlue,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => DialogUtils.getMessageDialog(
                        context: context,
                        message: 'Fulfil confirmed by user',
                        onExit: () {
                          Navigator.of(context).pop();
                          _mainPageCubit.switchPage(HomePage.tag);
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 80.w),
              Expanded(
                /// Reject Button
                child: DefaultButton(
                  title: 'Reject',
                  fontSize: 36.nsp,
                  color: accentPurple,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => DialogUtils.getMessageDialog(
                        context: context,
                        message: 'Fulfil rejected',
                        onExit: () {
                          Navigator.of(context).pop();
                          _mainPageCubit.switchPage(HomePage.tag);
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 80.w),
              Expanded(
                /// Return Button
                child: DefaultButton(
                  title: 'Return',
                  fontSize: 36.nsp,
                  color: accentRed,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => DialogUtils.getMessageDialog(
                        context: context,
                        message: 'Return accepted',
                        onExit: () {
                          Navigator.of(context).pop();
                          _mainPageCubit.switchPage(HomePage.tag);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
