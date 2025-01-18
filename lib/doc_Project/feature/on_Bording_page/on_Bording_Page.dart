import 'package:DoctorBook/doc_Project/feature/login_Page/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widght/appBarRow_OnBording.dart';
import 'widght/botton_Click.dart';
import 'widght/stack_OnBording.dart';
import 'widght/text_bottum.dart';

class on_Bording_Page extends StatelessWidget {
  const on_Bording_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarRowOnBording(),
              StackOnBording(),
              TextBottum(),
              BottonClick(
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => LoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
