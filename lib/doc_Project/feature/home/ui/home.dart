import 'package:DoctorBook/doc_Project/feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/List_Of_Doctor.dart';
import 'widget/medical_departments.dart';
import 'widget/offers_section.dart';
import 'widget/sectionTitle.dart';
import 'widget/top_menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..get_Specializationn()
        ..get_Doctor_model(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = HomeCubit.getOblect(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TopMenu(),
                    offers_section(
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    SectionTitle(
                      base_Text: "Doctor Speciality",
                      onTap_See_All: () {},
                    ),
                    state is HomeLoading
                        ? const Center(child: CircularProgressIndicator())
                        : cubit.getspecializationn == null
                            ? Container()
                            : Medical_departments(
                                onTap: () {},
                                get_specializationn: cubit.getspecializationn!,
                              ),
                    SizedBox(
                      height: 23.h,
                    ),
                    SectionTitle(
                      base_Text: "Recommendation Doctor",
                      onTap_See_All: () {},
                    ),
                    state is Home_Doctor_Loading
                        ? const Center(child: CircularProgressIndicator())
                        : cubit.getDoctorModel == null
                            ? Container()
                            : List_of_doctors(
                                getDoctorModel: cubit.getDoctorModel!,
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
}
