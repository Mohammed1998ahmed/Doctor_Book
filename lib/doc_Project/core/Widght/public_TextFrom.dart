import 'package:flutter/material.dart';

import '../Theme/colors.dart';
import '../Theme/textStyle.dart';

TextFormField publicTextFromField(
    {required String hintText,
    TextStyle? hintStyle,
    double? radiusEnabled,
    double? radiusfocused,
    Color? colorfocused,
    Color? colorEnabled,
    Widget? suffixIcon,
    bool? obscureText,
    TextInputType? keyboardType,
    required TextEditingController controller,
    String? Function(String?)? validator}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText ?? false,
    keyboardType: keyboardType,
    style: TextStyle_App.Input_Text_From_Style,
    validator: validator,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusfocused ?? 16),
          borderSide: BorderSide(
              color: colorfocused ?? Colors_App.Best_Color, width: 1.5)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: colorEnabled ?? Colors_App.Light_Gray, width: 1.5),
        borderRadius: BorderRadius.circular(radiusEnabled ?? 16),
      ),
      hintText: hintText,
      hintStyle: hintStyle ?? TextStyle_App.HintStyle,
      suffixIcon: suffixIcon ?? null,
      filled: true,
      fillColor: Colors_App.Fill_TextField_Color.withOpacity(0.6),
    ),
  );
}
