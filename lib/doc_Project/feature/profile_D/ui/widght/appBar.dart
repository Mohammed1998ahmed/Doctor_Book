// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBar_D extends StatelessWidget {
  const AppBar_D({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.only(top: 35.h, left: 12.w),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 50.w,
                height: 50.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Icon(Icons.arrow_back_ios),
              ),
            )
          ],
        ),
      ),
    );
  }
}
