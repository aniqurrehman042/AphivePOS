import 'package:aphive_pos/theme/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'bordered_text_field.dart';

class WideBorderedTextField extends StatelessWidget {
  const WideBorderedTextField({
    this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return BorderedTextField(
      hint: hint,
      inputType: TextInputType.text,
      width: AppDimensions.wideBorderedTextFieldWidth,
    );
  }
}
