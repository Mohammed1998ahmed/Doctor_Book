import 'package:DoctorBook/doc_Project/feature/profile_D/model/profile_Doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Doctors_information extends StatelessWidget {
  const Doctors_information({
    super.key,
    required this.profile_doctor,
  });
  final Profile_Doctor profile_doctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.w,
      height: 280.h,
      child: Padding(
        padding: EdgeInsets.only(top: 75.h),
        child: Column(
          children: [
            Container(
              height: 80.h,
              child: ListTile(
                title: Text(
                  "${profile_doctor.data!.name}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                subtitle: Text(
                  "${profile_doctor.data!.email}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
            Container(
              height: 80.h,
              child: ListTile(
                title: Text(
                  "Working hours",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                subtitle: Text(
                  "${profile_doctor.data!.startTime}- ${profile_doctor.data!.endTime}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
            Container(
              width: 250.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone Number  ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "${profile_doctor.data!.phone}",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
