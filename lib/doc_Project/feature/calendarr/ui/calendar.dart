import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/calendar_cubit.dart';
import 'widght/Select_Interview_Type.dart';
import 'widght/appBar_Widght.dart';
import 'widght/choose_The_Timing.dart';
import 'widght/easyDateTimeLine_Widght.dart';
import 'widght/section_Text.dart';

class Calendar extends StatefulWidget {
  Calendar({Key? key, required this.index_doctor}) : super(key: key);
  // ignore: non_constant_identifier_names
  final int index_doctor;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();

    List<DateTime> disabledDates = _generateDisabledDates(today);
    return BlocProvider(
      create: (context) => CalendarCubit(),
      child: BlocConsumer<CalendarCubit, CalendarState>(
        listener: (context, state) {
         },
        builder: (context, state) {
          final cubit = CalendarCubit.getObject(context);

          

          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                 const   SizedBox(
                      height: 50,
                    ),
                  const  AppBar_Widght(),
                    SizedBox(
                      height: 32.h,
                    ),
                    EasyDateTimeLine_Widght(disabledDates: disabledDates),
                const    Section_Text(
                      Text_Title: "Available time",
                    ),
                    ChooseTheTiming(),
                    SizedBox(
                      height: 24.h,
                    ),
                    SelectInterviewType(
                      formData: cubit.fromData ?? "2024-2-2",
                      formTime: cubit.fromTime ?? "10:10",
                      index_doctor: widget.index_doctor,
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

  List<DateTime> _generateValidDates(DateTime startDate, int numberOfDays) {
    List<DateTime> validDates = [];
    for (int i = 0; i < numberOfDays; i++) {
      validDates.add(startDate.add(Duration(days: i)));
    }
    return validDates;
  }

  List<DateTime> _generateDisabledDates(DateTime startDate) {
    List<DateTime> disabledDates = [];
    for (int i = 1; i <= 30; i++) {
      // افتراض أن لدينا تواريخ معطلة لمدة 30 يومًا قبل اليوم
      disabledDates.add(startDate.subtract(Duration(days: i)));
    }
    return disabledDates;
  }
}
