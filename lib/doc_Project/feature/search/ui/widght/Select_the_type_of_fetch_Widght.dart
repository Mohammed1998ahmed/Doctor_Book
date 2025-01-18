import 'package:DoctorBook/doc_Project/feature/search/logic/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'search_Type.dart';

class Select_the_type_of_fetch extends StatefulWidget {
  const Select_the_type_of_fetch({
    super.key,
    required this.cubit,
  });

  final SearchCubit cubit;

  @override
  State<Select_the_type_of_fetch> createState() =>
      _Select_the_type_of_fetchState();
}

class _Select_the_type_of_fetchState extends State<Select_the_type_of_fetch> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SearchType(
                  onTap: () {
                    setState(() {
                      widget.cubit.isTogel_1 = true;
                      widget.cubit.isTogel_2 = false;
                      widget.cubit.isTogel_3 = false;
                      widget.cubit.isTogel_4 = false;
                    });
                  },
                  fucos: widget.cubit.isTogel_1,
                  height: 41.h,
                  text: "All",
                  width: 65.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                SearchType(
                  onTap: () {
                    setState(() {
                      widget.cubit.isTogel_1 = false;
                      widget.cubit.isTogel_2 = true;
                      widget.cubit.isTogel_3 = false;
                      widget.cubit.isTogel_4 = false;
                    });
                  },
                  fucos: widget.cubit.isTogel_2,
                  height: 41.h,
                  text: "General",
                  width: 100.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                SearchType(
                  onTap: () {
                    setState(() {
                      widget.cubit.isTogel_1 = false;
                      widget.cubit.isTogel_2 = false;
                      widget.cubit.isTogel_3 = true;
                      widget.cubit.isTogel_4 = false;
                    });
                  },
                  fucos: widget.cubit.isTogel_3,
                  height: 41.h,
                  text: "Neurologic",
                  width: 120.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                SearchType(
                  onTap: () {
                    setState(() {
                      widget.cubit.isTogel_1 = false;
                      widget.cubit.isTogel_2 = false;
                      widget.cubit.isTogel_3 = false;
                      widget.cubit.isTogel_4 = true;
                    });
                  },
                  fucos: widget.cubit.isTogel_4,
                  height: 41.h,
                  text: "Pediatric",
                  width: 107.w,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
