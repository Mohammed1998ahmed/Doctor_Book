import 'package:DoctorBook/doc_Project/core/Theme/colors.dart';
import 'package:DoctorBook/doc_Project/feature/profile/logic/cubit/profile_person_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widght/appBar_Widght.dart';
import 'widght/profile_Content.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfilePersonCubit()..get_Profile_Persone(),
      child: BlocConsumer<ProfilePersonCubit, ProfilePersonState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = ProfilePersonCubit.getObject(context);
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors_App.Best_Color,
              child: Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppBar_Widght(),
                      SizedBox(
                        height: 30.h,
                      ),
                      Profile_Content(cubit: cubit),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
