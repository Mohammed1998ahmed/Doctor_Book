// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/colors.dart';
import '../../../../core/Theme/textStyle.dart';
import '../../logic/cubit/login_cubit.dart';

class InvestigationLine extends StatefulWidget {
  const InvestigationLine({super.key});

  @override
  _InvestigationLineState createState() => _InvestigationLineState();
}

class _InvestigationLineState extends State<InvestigationLine> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = LoginCubit.getObject(context);
        return Container(
          width: 327.w,
          height: 36.h,
          child: Row(
            children: [
              Row(
                children: [
                  Checkbox(
                      hoverColor: Colors_App.grayColor,
                      focusColor: Colors_App.grayColor,
                      // checkColor: Colors_App.grayColor,
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Colors_App.grayColor),
                      ),
                      activeColor: Colors_App.Best_Color,
                      value: cubit.Checkboxbool,
                      onChanged: (value) {
                        setState(() {
                          cubit.Checkboxbool = value!;
                        });
                      }),
                  const Text(
                    "Remember me",
                    style: TextStyle_App.Remember_Text_From_Style,
                  )
                ],
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle_App.Forgot_PassWord_Text_From_Style,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
