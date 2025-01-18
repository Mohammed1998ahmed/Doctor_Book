import 'package:DoctorBook/doc_Project/feature/calendarr/logic/cubit/calendar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseTheTiming extends StatefulWidget {
  ChooseTheTiming({Key? key}) : super(key: key);

  @override
  State<ChooseTheTiming> createState() => _ChooseTheTimingState();
}

class _ChooseTheTimingState extends State<ChooseTheTiming> {
  List<String> times = [
    '08:00',
    '10:00',
    '12:00',
    '14:00',
    '16:00',
    '18:00',
  ];

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalendarCubit, CalendarState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = CalendarCubit.getObject(context);
        return Container(
          width: 327.w,
          height: 171.h,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 10,
                childAspectRatio: 3.5),
            itemCount: times.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    cubit.chang_Time(time1: times[index]);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Colors.blue
                        : Color(0xffF2F4F7),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    times[index],
                    style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.white
                          : Color(0xffC2C2C2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
