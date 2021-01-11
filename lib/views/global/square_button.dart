import 'package:aphive_pos/theme/text_styles.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class SquareButton extends StatelessWidget {
  SquareButton({
    this.title,
    this.color,
    this.onTap,
    this.width,
    this.fontSize,
  });

  final String title;
  final Color color;
  final void Function() onTap;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(1.0))),
        padding: EdgeInsets.symmetric(
          vertical: 30.r,
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: AppTextStyles.getSquareBtnTextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
