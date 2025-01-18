import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class View_Bookings_Buttons extends StatelessWidget {
  const View_Bookings_Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 59.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffF8F8F8)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              print("My Appointment");
            },
            child: Container(
              width: 162.w,
              height: 58.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "My Appointment",
                style: TextStyle(
                    color: Color(0xff242424),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            width: 1,
            height: 45,
            color: Color(0x8F868585),
          ),
          GestureDetector(
            onTap: () {
              print("Medical records");
            },
            child: Container(
              width: 162.w,
              height: 58.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "Medical records",
                style: TextStyle(
                    color: Color(0xff242424),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
