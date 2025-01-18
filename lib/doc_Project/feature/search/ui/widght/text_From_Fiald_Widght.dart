// ignore_for_file: camel_case_types

import 'package:DoctorBook/doc_Project/feature/search/logic/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/textStyle.dart';

class TextFrom_Fiald_Widght extends StatelessWidget {
  const TextFrom_Fiald_Widght({
    super.key,
    required this.controller_Search,
    required this.cubit,
  });

  final TextEditingController controller_Search;
  final SearchCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Container(
                width: 303.w,
                height: 46.h,
                decoration: BoxDecoration(
                    color: Color(0xffF2F4F7),
                    borderRadius: BorderRadius.circular(40)),
                child: TextFormField(
                  controller: controller_Search,
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    cubit.get_Search(nameSearch: controller_Search.text);
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle_App.HintStyle,
                  ),
                ),
              ),
              Container(
                width: 40.w,
                height: 46.h,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
              )
            ],
          ),
        );
      },
    );
  }
}
