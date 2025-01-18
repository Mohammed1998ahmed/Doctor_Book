import 'package:DoctorBook/doc_Project/feature/home/data/model/get_Specializationn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/colors.dart';
import '../../../../core/Theme/textStyle.dart';
import '../../../list_Doctor/ui/list_Doctors.dart';

class Medical_departments extends StatelessWidget {
  const Medical_departments(
      // ignore: non_constant_identifier_names
      {super.key,
      required this.onTap,
      required this.get_specializationn});
  final void Function() onTap;
  // ignore: non_constant_identifier_names
  final GetSpecialization get_specializationn;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 343.w,
      height: 86.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: get_specializationn.data!.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 16.w,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => ListDoctors(
                    index_Dep: get_specializationn.data![index].id!,
                  ),
                ),
              );
            },
            child: Container(
              width: 73.w,
              height: 86.h,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Colors_App.circleAvater,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/image/Man_Doctor.png"))),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 56.w,
                    height: 18.h,
                    alignment: Alignment.center,
                    child: Text(
                      get_specializationn.data![index].name ?? "cardiology",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle_App.section_All_Style,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
