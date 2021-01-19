import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AppDimensions {
  /// Dimension doubles
  static double tableContentHorizontalPadding = 20.w;
  static double offersGridCrossAxisSpacing = 100.r;
  static double offersGridMainAxisSpacing = 100.r;
  static double qrDialogWidgetWidth = 700.w;
  static double wideBorderedTextFieldWidth = qrDialogWidgetWidth;

  /// Font Sizes
  static double smallFontSize = 33.nsp;

  /// Padding Edge Insets
  static getHomePagePadding() => EdgeInsets.symmetric(
        horizontal: 120.w,
        vertical: 40.h,
      );

  static getOffersPagePadding() => EdgeInsets.symmetric(
        horizontal: 100.r,
        vertical: 50.r,
      );

  static getReceivePaymentsPagePadding() => EdgeInsets.symmetric(
        horizontal: 200.r,
        vertical: 100.r,
      );

  static getRetrieveOfferPagePadding() => EdgeInsets.symmetric(
    horizontal: 300.r,
    vertical: 120.r,
  );

  static getRewardPointsPagePadding() => EdgeInsets.symmetric(
        horizontal: 200.r,
        vertical: 100.r,
      );

  static getTableContentHorizontalPadding() => EdgeInsets.only(
        left: tableContentHorizontalPadding,
      );

  static getTableButtonPadding() => EdgeInsets.only(
        left: AppDimensions.tableContentHorizontalPadding,
        top: 10.r,
        bottom: 10.r,
      );

  static getPaddingR2w() => EdgeInsets.only(right: 20.w);

  /// counts
  static const int offersGridCrossAxisCount = 3;

  /// Ratios
  static const double offersGridChildAspectRatio = 0.55;
}
