import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/textStyle.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.base_Text,
    required this.onTap_See_All,
  });
  final String base_Text;
  final void Function() onTap_See_All;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 29.h,
            // alignment: Alignment.centerLeft,
            child: Text(
              base_Text,
              style: TextStyle_App.doctor_Speciality_Style,
            ),
          ),
          GestureDetector(
            onTap: onTap_See_All,
            child: Container(
              width: 40.w,
              height: 30.h,
              alignment: Alignment.center,
              child:const Text(
                "See All",
                style: TextStyle_App.see_All_Style,
              ),
            ),
          )
        ],
      ),
    );
  }
}
