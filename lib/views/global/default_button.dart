import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    this.title,
    this.color,
    this.isSqueezed = false,
    this.isHidden = false,
    this.fontSize,
    this.fontWeight,
    this.onTap,
  });

  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final void Function() onTap;

  /// For a button with less horizontal width
  final bool isSqueezed;

  /// For a hidden button used for layout positioning
  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: isSqueezed ? 0 : 360.r,
        maxHeight: isHidden ? 0 : 80.r,
      ),

      /// Hide hidden button with opacity
      child: Opacity(
        opacity: isHidden ? 0 : 1,
        child: Container(
          height: 80.r,
          child: RaisedButton(
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(3.0))),
            padding: EdgeInsets.symmetric(
              horizontal: isSqueezed ? 30.r : 80.r,
            ),
            onPressed: onTap,
            child: Text(
              title,
              style: AppTextStyles.getDefaultBtnTextStyle(
                fontSize: fontSize ?? 30.nsp,
                fontWeight: fontWeight ?? FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
