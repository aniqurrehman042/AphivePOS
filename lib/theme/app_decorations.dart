import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppDecorations {
  static BoxDecoration getActiveMenuItemBoxDecoration() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          offset: Offset(0.0, 1.0),
          blurRadius: 2.0,
          color: Color(0x33000000),
        ),
      ],
    );
  }

  static ShapeDecoration getRoundedBorderShapeDecoration() {
    return ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.0,
          style: BorderStyle.solid,
          color: darkGrey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
      ),
    );
  }

  static ShapeDecoration getRoundedGreyShapeDecoration() {
    return ShapeDecoration(
      color: lightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
      ),
    );
  }

  static InputDecoration getNoBorderInputDecoration({String hint}) {
    return InputDecoration(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      contentPadding: EdgeInsets.all(0.0),
      isDense: true,
      hintText: hint,
      hintStyle: TextStyle(
        fontStyle: FontStyle.italic,
        color: darkGrey,
      )
    );
  }
}