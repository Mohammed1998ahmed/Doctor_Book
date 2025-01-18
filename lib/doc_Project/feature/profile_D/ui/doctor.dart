import 'package:DoctorBook/doc_Project/feature/profile_D/logic/cubit/profile_doctors_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Widght/public_ElevatedButton.dart';
import 'widght/appBar.dart';
import 'widght/blue_Container.dart';
import 'widght/doctor_Picture.dart';
import 'widght/doctors_information.dart';
import 'widght/other_Information.dart';

class Doctor extends StatelessWidget {
  const Doctor({Key? key, required this.index_D}) : super(key: key);
  final int index_D;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProfileDoctorsCubit()..get_Profile_Doctor(index: index_D),
      child: BlocConsumer<ProfileDoctorsCubit, ProfileDoctorsState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = ProfileDoctorsCubit.getObject(context);
          return Scaffold(
            body: cubit.profile_doctor == null
                ? Container(
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Blue_container(),
                            Doctors_information(
                              profile_doctor: cubit.profile_doctor!,
                            ),
                            Doctor_picture(),
                            AppBar_D(
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        Other_information(
                          profile_doctor: cubit.profile_doctor,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                          child: public_ElevatedButton(
                              nameButton: "Make An Appointment",
                              onPressed: () {},
                              size_Button: Size(327.w, 52.h)),
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
