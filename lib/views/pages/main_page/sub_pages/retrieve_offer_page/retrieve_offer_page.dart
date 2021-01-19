import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/theme/app_dimensions.dart';
import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:aphive_pos/theme/app_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/app_sized_box.dart';
import 'package:aphive_pos/views/global/default_button.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/retrieve_offer_page/retrieve_offer_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RetrieveOrderPage extends StatelessWidget {
  static const tag = 'RetrieveOrderPage';

  final RetrieveOfferPageViewModel _retrieveOfferPageViewModel = RetrieveOfferPageViewModel();

  @override
  Widget build(BuildContext context) {
    MainPageCubit _mainPageCubit = context.read<MainPageCubit>();

    /// Container for padding
    return Container(
      padding: AppDimensions.getRetrieveOfferPagePadding(),
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

          AppSizedBox.height3(),

          /// Offer Details
          /// Offer Name
          Text(
            _retrieveOfferPageViewModel.offer.orderName,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          AppSizedBox.height3(),

          /// Offer Description
          Text(
            _retrieveOfferPageViewModel.offer.orderDescription,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          AppSizedBox.height3(),

          /// Offer Quantity
          Text(
            _retrieveOfferPageViewModel.offer.quantity,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          AppSizedBox.height3(),

          /// Offer Value
          Text(
            _retrieveOfferPageViewModel.offer.orderValue,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          AppSizedBox.height3(),

          /// Offer Fulfillment Period
          Text(
            _retrieveOfferPageViewModel.offer.fulfillmentPeriod,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          AppSizedBox.height3(),

          /// Offer Refundable Status
          Text(
            _retrieveOfferPageViewModel.offer.refundableStatus,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          AppSizedBox.height3(),

          /// Username
          Text(
            _retrieveOfferPageViewModel.offer.username,
            style: AppTextStyles.getSmallTextStyle(),
          ),

          AppSizedBox.height6(),

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
              AppSizedBox.width8(),
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
              AppSizedBox.width8(),
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
