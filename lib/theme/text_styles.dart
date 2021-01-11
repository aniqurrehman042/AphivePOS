import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AppTextStyles {
  static TextStyle getLogoStyle() => TextStyle(
        fontSize: 46.nsp,
        color: Colors.white,
      );

  static TextStyle getDefaultBtnTextStyle({
    double fontSize,
    FontWeight fontWeight,
  }) =>
      TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight,
      );

  static TextStyle getSquareBtnTextStyle({double fontSize}) => TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      );

  static TextStyle getEventDetailsTextStyle() => TextStyle(
        fontSize: 38.nsp,
      );

  static TextStyle getEventDetailsHeadingTextStyle() => TextStyle(
        color: primaryBlue,
        fontSize: 52.nsp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle getNormalTextStyle() => TextStyle(
    fontSize: 38.nsp,
  );

  static TextStyle getLargeTextStyle() => TextStyle(
    fontSize: 52.nsp,
  );

  static TextStyle getLargeBlueTextStyle() => TextStyle(
    fontSize: 52.nsp,
    color: primaryBlue,
  );

  static TextStyle getNormalBlueTextStyle() => TextStyle(
    fontSize: 38.nsp,
    color: primaryBlue,
  );

  static TextStyle getSmallTextStyle() => TextStyle(
    fontSize: 33.nsp,
  );

  static TextStyle getExtraSmallTextStyle() => TextStyle(
    fontSize: 28.nsp,
  );

  static TextStyle getExtraSmallBlueTextStyle() => TextStyle(
    fontSize: 28.nsp,
    color: primaryBlue,
  );

  static TextStyle getSemiNormalTextStyle() => TextStyle(
    fontSize: 35.nsp,
  );

  static TextStyle getSmallBlueHeadingTextStyle() => TextStyle(
    fontSize: 33.nsp,
    fontWeight: FontWeight.w700,
    color: primaryBlue,
  );

  static TextStyle getSmallGreenHeadingTextStyle() => TextStyle(
    fontSize: 32.nsp,
    fontWeight: FontWeight.w700,
    color: accentGreen,
  );
}
