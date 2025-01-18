import 'package:DoctorBook/doc_Project/core/Widght/public_ElevatedButton.dart';
import 'package:DoctorBook/doc_Project/feature/calendarr/logic/cubit/calendar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'section_Text.dart';

class SelectInterviewType extends StatefulWidget {
  SelectInterviewType(
      {Key? key,
      required this.index_doctor,
      required this.formData,
      required this.formTime})
      : super(key: key);
  final int index_doctor;
  final String formData;
  final String formTime;
  @override
  State<SelectInterviewType> createState() => _SelectInterviewTypeState();
}

class _SelectInterviewTypeState extends State<SelectInterviewType> {
  int selectedValue = 0;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalendarCubit, CalendarState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = CalendarCubit.getObject(context);
        return Container(
          width: 327.w,
          height: 248.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Section_Text(
                  Text_Title: "Appointment Type",
                ),
                Container(
                    width: 327.w,
                    height: 200.h,
                    child: Column(
                      children: [
                        Lines_Buttons(0,
                            child_Circle: const Icon(Icons.person),
                            name: "In Person"),
                        Lines_Buttons(1,
                            child_Circle: const Icon(Icons.video_call),
                            name: "Video Call"),
                        Lines_Buttons(2,
                            child_Circle: const Icon(Icons.phone),
                            name: "Phone Call")
                      ],
                    )),
                public_ElevatedButton(
                    onPressed: () {
                      cubit.post_Appointment(
                          doctor_id: widget.index_doctor,
                          start_time: widget.formData + widget.formTime);
                    },
                    nameButton: "Reschedule")
              ],
            ),
          ),
        );
      },
    );
  }

  Padding Lines_Buttons(
    int index, {
    required Widget child_Circle,
    required String name,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          CircleAvatar(
            child: child_Circle,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              name,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Radio<int>(
            value: index,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
