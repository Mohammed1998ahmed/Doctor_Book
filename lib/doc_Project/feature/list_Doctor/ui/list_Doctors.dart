import 'package:DoctorBook/doc_Project/feature/list_Doctor/logic/cubit/list_doctor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widght/list_Doctor_by_department.dart';

class ListDoctors extends StatelessWidget {
  const ListDoctors({Key? key, required this.index_Dep}) : super(key: key);
  final int index_Dep;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ListDoctorCubit()..get_List_Doctor(index_Departments: index_Dep),
      child: BlocConsumer<ListDoctorCubit, ListDoctorState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = ListDoctorCubit.getObject(context);
          return Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {},
                child: Icon(Icons.arrow_back_ios),
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
            body: cubit.list_doctor == null
                ? Container(
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                // ignore: sized_box_for_whitespace
                : Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: List_of_doctors(
                      list_doctor: cubit.list_doctor!,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
