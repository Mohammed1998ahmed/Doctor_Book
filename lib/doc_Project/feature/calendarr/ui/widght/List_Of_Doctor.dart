import 'package:DoctorBook/doc_Project/feature/calendarr/data/get_All_Doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/Theme/textStyle.dart';
import '../../../../core/Widght/public_ElevatedButton.dart';
import '../calendar.dart';

// ignore: camel_case_types
class List_of_doctors extends StatefulWidget {
  const List_of_doctors({
    super.key,
    required this.getDoctorModel,
  });

  final GetDoctorModel getDoctorModel;

  @override
  // ignore: library_private_types_in_public_api
  _List_of_doctorsState createState() => _List_of_doctorsState();
}

// ignore: camel_case_types
class _List_of_doctorsState extends State<List_of_doctors> {
  int? _selectedDoctorIndex;
  // ignore: non_constant_identifier_names
  int? id_Doctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 268.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.separated(
            itemCount: widget.getDoctorModel.data!.length,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 16.h,
            ),
            itemBuilder: (BuildContext context, int index) {
              // ignore: sized_box_for_whitespace
              return Container(
                width: 393.w,
                height: 126.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: Row(
                    children: [
                      Container(
                        width: 97.w,
                        height: 110.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage("assets/image/person.png"),
                          ),
                        ),
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
                                "Dr. ${widget.getDoctorModel.data![index].name.toString()}",
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
                                            '${widget.getDoctorModel.data![index].gender.toString()}',
                                        style: TextStyle_App
                                            .specialization_Doctor_Style,
                                      ),
                                      const TextSpan(
                                        text: ' | ',
                                        style: TextStyle_App
                                            .specialization_Doctor_Style,
                                      ),
                                      TextSpan(
                                        text:
                                            // ignore: unnecessary_string_interpolations
                                            '${widget.getDoctorModel.data![index].degree.toString()}',
                                        style: TextStyle_App
                                            .specialization_Doctor_Style,
                                      ),
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
                                  "${widget.getDoctorModel.data![index].address.toString()}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style:
                                      TextStyle_App.specialization_Doctor_Style,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Checkbox(
                        value: _selectedDoctorIndex == index,
                        onChanged: (bool? value) {
                          setState(() {
                            _selectedDoctorIndex = value! ? index : null;
                            id_Doctor = value
                                ? widget.getDoctorModel.data![index].id
                                : null;
                            print(widget.getDoctorModel.data![index].id
                                .toString());
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: public_ElevatedButton(
                nameButton: "Next",
                onPressed: () {
                  id_Doctor == null
                      ? null
                      : Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Calendar(
                              index_doctor: id_Doctor!,
                            ),
                          ),
                        );
                }),
          )
        ],
      ),
    );
  }
}
