import 'package:DoctorBook/doc_Project/core/Theme/colors.dart';
import 'package:DoctorBook/doc_Project/core/Theme/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottonClick extends StatelessWidget {
  const BottonClick({
    super.key,
    required this.onPressed,
  });
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors_App.Best_Color),
            minimumSize: MaterialStatePropertyAll(Size(150, 50)), // حجم الزر
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    15), // تغيير نصف القطر للحواف المستديرة
              ),
            ),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              "Get Started",
              style: TextStyle_App.Bottum_Click,
            ),
          ),
        ));
  }
}
