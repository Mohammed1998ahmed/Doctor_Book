import 'package:DoctorBook/doc_Project/feature/calendarr/logic/cubit/calendar_cubit.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart'; // استيراد مكتبة intl

import '../../../../core/Theme/colors.dart';

class EasyDateTimeLine_Widght extends StatelessWidget {
  const EasyDateTimeLine_Widght({
    super.key,
    required this.disabledDates,
  });

  final List<DateTime> disabledDates;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalendarCubit, CalendarState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = CalendarCubit.getObject(context);
        // ignore: sized_box_for_whitespace
        return Container(
          height: 200.h,
          child: EasyDateTimeLine(
            disabledDates: disabledDates,
            onDateChange: (selectedDate) {
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(selectedDate);

              cubit.chang_Data(data1: formattedDate);
            },
            initialDate: DateTime.now(),
            activeColor: Colors_App.Best_Color,
          ),
        );
      },
    );
  }
}
