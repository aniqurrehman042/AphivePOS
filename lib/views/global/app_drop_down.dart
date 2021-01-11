import 'package:aphive_pos/theme/decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AppDropDown extends StatelessWidget {
  const AppDropDown({
    this.value,
    this.items,
    this.hintText,
    this.width,
    this.onChanged,
  });

  final String value;
  final List<String> items;
  final String hintText;
  final double width;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      /// Container for adding border to Drop Down Button
      child: Container(
        height: 80.r,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: 10.r,
          vertical: 10.r,
        ),
        decoration:
        AppDecorations.getRoundedBorderShapeDecoration(),

        /// Drop Down Button
        child: DropdownButton<String>(
          value: value,
          isDense: true,
          onChanged: onChanged,
          iconSize: 50.r,
          hint: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.r),
            child: Text(
              hintText,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30.nsp,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          items: items.map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.r),
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.nsp,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
