import 'package:DoctorBook/doc_Project/feature/list_Doctor/model/list_Doctors_Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/textStyle.dart';
import '../../../profile_D/ui/doctor.dart';

// ignore: camel_case_types
class List_of_doctors extends StatelessWidget {
  const List_of_doctors({
    super.key,
    // ignore: non_constant_identifier_names
    required this.list_doctor,
  });

  // ignore: non_constant_identifier_names
  final List_Doctor list_doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 268.h,
      child: ListView.separated(
        itemCount: list_doctor.data!.doctors!.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          height: 16.h,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Doctor(
                    index_D: list_doctor.data!.doctors![index].id ?? 0,
                  ),
                ),
              );
            },
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 343.w,
              height: 126.h,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 110.w,
                      height: 110.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage("assets/image/person.png"))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 17.5.h,
                        left: 10.w,
                        top: 1.5.h,
                      ),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 201.w,
                        height: 90.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. ${list_doctor.data!.doctors![index].name.toString()}",
                              style: TextStyle_App.name_Doctor_Style,
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: 10.h,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            // ignore: unnecessary_string_interpolations
                                            '${list_doctor.data!.doctors![index].gender.toString()}',
                                        style: TextStyle_App
                                            .specialization_Doctor_Style),
                                    const TextSpan(
                                        text: ' | ',
                                        style: TextStyle_App
                                            .specialization_Doctor_Style),
                                    TextSpan(
                                        text:
                                            // ignore: unnecessary_string_interpolations
                                            '${list_doctor.data!.doctors![index].degree.toString()}',
                                        style: TextStyle_App
                                            .specialization_Doctor_Style),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: 16.h,
                              width: 201.w,
                              child: Text(
                                // ignore: unnecessary_string_interpolations
                                "${list_doctor.data!.doctors![index].address.toString()}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style:
                                    TextStyle_App.specialization_Doctor_Style,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
