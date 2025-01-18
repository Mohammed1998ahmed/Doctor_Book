import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theme/colors.dart';
import '../Theme/textStyle.dart';

ElevatedButton public_ElevatedButton(
    {Color? backgroundColor,
    double? radius,
    TextStyle? style,
    Size? size_Button,
    required void Function()? onPressed,
    required String nameButton}) {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(backgroundColor ?? Colors_App.Best_Color),
        minimumSize: MaterialStatePropertyAll(
            size_Button ?? Size(327.w, 52.h)), // حجم الزر
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                radius ?? 16), // تغيير نصف القطر للحواف المستديرة
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        nameButton,
        style: style ?? TextStyle_App.Bottum_Click,
      ));
}
