import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Doctor_picture extends StatelessWidget {
  const Doctor_picture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 1.h,
      right: 20.w,
      child: Container(
        width: 120.w,
        height: 200.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            image: DecorationImage(
                image: AssetImage(
                  "assets/image/Image_home_D.png",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
