import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/textStyle.dart';
import '../../../profile_D/ui/doctor.dart';
import 'package:DoctorBook/doc_Project/feature/search/logic/cubit/search_cubit.dart';

class Show_search_result extends StatelessWidget {
  const Show_search_result({
    super.key,
    required this.cubit,
  });

  final SearchCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          width: 343.w,
          height: 402.h,
          child: ListView.separated(
            itemCount: cubit.searchDoctor!.data!.length,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 16.h,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  // هنا يمكنك تنفيذ التنقل أو أي إجراء آخر تريده عند النقر
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Doctor(
                        index_D: cubit.searchDoctor!.data![index].id ?? 0,
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 4, // الارتفاع لإضافة ظل حول الكارد
                  color: Colors.white,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        12), // لتحديد حواف الكارد المستديرة
                  ),
                  child: Container(
                    width: 343.w,
                    height: 126.h,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 110.w,
                            height: 110.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage("assets/image/person.png"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 17.5.h,
                              left: 7.w,
                              top: 1.5.h,
                            ),
                            child: Container(
                              width: 201.w,
                              height: 75.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 201.w,
                                    height: 24.h,
                                    child: Text(
                                      "Dr. ${cubit.searchDoctor!.data![index].name}",
                                      style: TextStyle_App.name_Doctor_Style,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Container(
                                    width: 201.w,
                                    height: 15.h,
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text:
                                                '${cubit.searchDoctor!.data![index].gender}',
                                            style: TextStyle_App
                                                .specialization_Doctor_Style,
                                          ),
                                          TextSpan(
                                            text: ' | ',
                                            style: TextStyle_App
                                                .specialization_Doctor_Style,
                                          ),
                                          TextSpan(
                                            text:
                                                '${cubit.searchDoctor!.data![index].degree}',
                                            style: TextStyle_App
                                                .specialization_Doctor_Style,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    height: 16.h,
                                    width: 201.w,
                                    child: Text(
                                      "${cubit.searchDoctor!.data![index].address}",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle_App
                                          .specialization_Doctor_Style,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
