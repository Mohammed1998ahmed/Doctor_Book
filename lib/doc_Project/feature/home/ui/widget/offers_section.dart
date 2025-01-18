import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/colors.dart';

class offers_section extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  offers_section({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 343.w,
      height: 200.h,
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            bottom: 0.0.h,
            child: Container(
              width: 343.w,
              height: 167.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Colors_App.Best_Color,
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: 343.w,
            height: 200.h,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 18.w, right: 18.w, top: 35.h),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 163.w,
                        height: 87.h,
                        child:const Text(
                          "Book and schedule with nearest doctor",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.w, vertical: 15.h),
                      child: GestureDetector(
                        onTap: onTap,
                        child: Container(
                          width: 109.w,
                          height: 40.h,
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(48),
                            color: Colors_App.Bottum_Click,
                          ),
                          child:const Text(
                            "Find Nearby",
                            style: TextStyle(
                                color: Colors_App.Best_Color,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
               const Spacer(),
                Container(
                  width: 138.w,
                  height: 200.h,
                  decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/Image_home_D.png"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
