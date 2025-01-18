import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/textStyle.dart';

class Text_AppBar_Widght extends StatelessWidget {
  const Text_AppBar_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Create Account",
          style: TextStyle_App.Best_Text_Login,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
          style: TextStyle_App.Sub_Text_Login,
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
