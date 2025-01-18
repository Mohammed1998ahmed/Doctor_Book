import 'package:DoctorBook/doc_Project/core/Theme/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextBottum extends StatelessWidget {
  const TextBottum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.h),
      child: Container(
        width: 312.w,
        height: 30.h,
        child: Text(
          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
          textAlign: TextAlign.center,
          style: TextStyle_App.Bottum_Text_OnBording,
        ),
      ),
    );
  }
}
