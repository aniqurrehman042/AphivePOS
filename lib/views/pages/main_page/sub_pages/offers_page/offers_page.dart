import 'package:aphive_pos/data/models/offer.dart';
import 'package:aphive_pos/theme/text_styles.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/default_button.dart';
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
            'Active Offers',
            style: AppTextStyles.getSemiNormalTextStyle(),
          ),

          SizedBox(height: 40.r),

          /// Offers Grid
          Expanded(
            child: GridView.builder(
              itemCount: _offersPageViewModel.offers.length,
              itemBuilder: (context, index) => OfferBox(
                offer: _offersPageViewModel.offers[index],
                offerNo: (index + 1).toString(),
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

class OfferBox extends StatelessWidget {
  OfferBox({
    this.offer,
    this.offerNo,
  });

  final Offer offer;
  final String offerNo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Offer No Text
        Text(
          'Offer $offerNo',
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
              /// Offer name heading
              Text(
                'Offer name',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Offer name
              Text(
                offer.offerName,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Offer description heading
              Text(
                'Offer description',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Offer description
              Text(
                offer.offerDescription,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Offer validity heading
              Text(
                'Validity',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Offer validity
              Text(
                offer.fulfillmentPeriod,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Offer value heading
              Text(
                'Offer value',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Offer value
              Text(
                offer.offerValue,
                style: AppTextStyles.getExtraSmallTextStyle(),
              ),

              Divider(),

              /// Offer available quantity heading
              Text(
                'Available quantity',
                style: AppTextStyles.getExtraSmallBlueTextStyle(),
              ),

              /// Offer available quantity
              Text(
                offer.quantity,
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
                        offerName: offer.offerName,
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
