import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/textStyle.dart';

// ignore: camel_case_types
class Top_Text extends StatelessWidget {
  const Top_Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome Back",
          style: TextStyle_App.Best_Text_Login,
        ),
        SizedBox(
          height: 5.h,
        ),
        const Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: TextStyle_App.Sub_Text_Login,
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
