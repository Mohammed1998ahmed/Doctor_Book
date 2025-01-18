import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Theme/colors.dart';
import '../../../core/Theme/textStyle.dart';

class StackOnBording extends StatelessWidget {
  const StackOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 443.w,
            height: 443.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/Group.png"))),
          ),
          Container(
            width: 443.w,
            height: 443.h,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(0, 255, 255, 255),
                Colors_App.LinearGradient_On_bording_2
              ], begin: Alignment.center, end: Alignment.bottomCenter),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image.png"))),
          ),
          Container(
            width: 375.w,
            height: 239.h,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: Text(
                "Best Doctor Appointment App",
                textAlign: TextAlign.center,
                style: TextStyle_App.Best_Text_Row_OnBording,
              ),
            ),
          )
        ],
      ),
    );
  }
}
