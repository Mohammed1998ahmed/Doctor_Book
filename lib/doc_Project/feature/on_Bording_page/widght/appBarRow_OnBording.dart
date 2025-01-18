import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Theme/textStyle.dart';

class AppBarRowOnBording extends StatelessWidget {
  const AppBarRowOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 38.02.w,
          height: 38.02.h,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/image/Frame.png"))),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
            width: 95.w,
            height: 18.99.h,
            child: Text(
              "Docdoc",
              style: TextStyle_App.AppBar_Row_OnBording,
            ))
      ],
    );
  }
}
