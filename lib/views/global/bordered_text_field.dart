import 'package:aphive_pos/theme/decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class BorderedTextField extends StatelessWidget {
  const BorderedTextField({
    this.hint,
    this.inputType,
    this.width,
  });

  final String hint;
  final TextInputType inputType;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.r,
      width: width ?? 250.w,
      padding: EdgeInsets.symmetric(
        horizontal: 30.r,
      ),
      decoration: AppDecorations.getRoundedBorderShapeDecoration(),

      /// Text Field
      child: Center(
        child: TextField(
          keyboardType: inputType,
          decoration: AppDecorations.getNoBorderInputDecoration(hint: hint),
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.nsp,
          ),
        ),
      ),
    );
  }
}
