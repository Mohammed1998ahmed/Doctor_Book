import 'package:DoctorBook/doc_Project/core/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/Theme/textStyle.dart';

class TopMenu extends StatelessWidget {
  // ignore: use_super_parameters
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Omar!",
                style: TextStyle_App.main_Text_AppBar_Style,
              ),
              Text(
                "How Are you Today?",
                style: TextStyle_App.sub_main_Text_AppBar_Style,
              )
            ],
          ),
          const Spacer(),
          CircleAvatar(
            backgroundColor: Colors_App.notifications_circle,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  width: 18.w,
                  height: 20.h,
                  child: SvgPicture.asset(
                    "assets/svg/Shape.svg",
                    fit: BoxFit.fill,
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 4,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
