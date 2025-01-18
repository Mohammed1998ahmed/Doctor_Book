import 'package:DoctorBook/doc_Project/feature/search/logic/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widght/Select_the_type_of_fetch_Widght.dart';
import 'widght/appBar_Widght.dart';

import 'widght/show_search_result_Widght.dart';
import 'widght/text_From_Fiald_Widght.dart';

// ignore: must_be_immutable
class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController controller_Search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = SearchCubit.getObject(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  const App_Bar_Widght(),
                  SizedBox(
                    height: 32.h,
                  ),
                  TextFrom_Fiald_Widght(
                      controller_Search: controller_Search, cubit: cubit),
                  SizedBox(
                    height: 32.h,
                  ),
                  Select_the_type_of_fetch(cubit: cubit),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        Text(
                          '${cubit.searchDoctor == null ? "0" : cubit.searchDoctor!.data!.length}${" founds"}',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cubit.searchDoctor == null
                      // ignore: avoid_unnecessary_containers
                      ? Container(
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : cubit.searchDoctor!.data == null
                          ? Container()
                          : Show_search_result(cubit: cubit),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
