import 'package:DoctorBook/doc_Project/feature/calendarr/logic/cubit/calendar_cubit.dart';
import 'package:DoctorBook/doc_Project/feature/calendarr/ui/widght/List_Of_Doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListDoctors extends StatelessWidget {
  const ListDoctors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarCubit()..get_Doctor_model(),
      child: BlocConsumer<CalendarCubit, CalendarState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = CalendarCubit.getObject(context);
          return Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.arrow_back_ios),
              ),
              title: const Center(
                child: Text(
                  "List Doctor\`s",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              actions: [
                Container(
                  width: 45.w,
                )
              ],
            ),
            body: cubit.getDoctorModel == null
                ? Container(
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: List_of_doctors(
                      getDoctorModel: cubit.getDoctorModel!,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
