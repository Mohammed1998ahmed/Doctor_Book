import 'package:DoctorBook/doc_Project/feature/profile/logic/cubit/profile_person_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appBar_Widght.dart';
import 'view_Bookings_Buttons.dart';

class Profile_Content extends StatelessWidget {
  const Profile_Content({
    super.key,
    required this.cubit,
  });

  final ProfilePersonCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 670.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 620.h,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Column(
              children: [
                SizedBox(
                  height: 98.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90.w),
                  child: Container(
                    width: 190.w,
                    height: 52.h,
                    child: cubit.profile_model == null
                        ? Container(
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Column(
                            children: [
                              Text(
                                cubit.profile_model!.data![0].name!,
                                style: const TextStyle(
                                    color: Color(0xff121212),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                cubit.profile_model!.data![0].email!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                const View_Bookings_Buttons(),
                SizedBox(
                  height: 24.h,
                ),
                Profile_bar(
                  textbar: 'Personal Information',
                  nameImage: "personalcard.png",
                  onTap: () {},
                ),
                SizedBox(
                  height: 16.h,
                ),
                Profile_bar(
                  textbar: 'My Test & Diagnostic',
                  nameImage: "wallet-2.png",
                  onTap: () {},
                ),
                SizedBox(
                  height: 16.h,
                ),
                Profile_bar(
                  textbar: 'Payment',
                  nameImage: "wallet-2.png",
                  onTap: () {},
                  color: const Color(0xffFFEEEF),
                )
              ],
            ),
          ),
          Positioned(
            top: 1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white,
                ),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/image/profile_image.png"),
                ),
                Positioned(
                  top: 100.h,
                  // left: 3,
                  right: 10,
                  child: const Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.edit,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
