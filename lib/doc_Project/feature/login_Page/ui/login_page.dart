import 'package:DoctorBook/doc_Project/core/Theme/colors.dart';
import 'package:DoctorBook/doc_Project/feature/login_Page/logic/cubit/login_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/Widght/public_ElevatedButton.dart';
import '../../button_Navigation_Bar/ui/nav.dart';
import 'widght/Button_Text_Sign_Up.dart';
import 'widght/investigation_line.dart';
import 'widght/richText_Widght.dart';
import 'widght/text_input.dart';
import 'widght/top_Text.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => Button_Navigation_Bar(),
              ),
            );
          }
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = LoginCubit.getObject(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 50.0.h, left: 30.0.h, right: 30.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Top_Text(),
                    const Form_Input(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const InvestigationLine(),
                    SizedBox(
                      height: 32.h,
                    ),
                    state is LoginLoading &&
                            (state is! LoginSuccess || state is! LoginError)
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors_App.Best_Color,
                            ),
                          )
                        : public_ElevatedButton(
                            nameButton: "Login",
                            onPressed: () {
                              if (cubit.keyState.currentState!.validate()) {
                                cubit.postLogin(
                                    email: cubit.controller_Email.text,
                                    password: cubit.controller_Password.text);
                              }
                            },
                            radius: 16,
                            backgroundColor: Colors_App.Best_Color),
                    SizedBox(
                      height: 32.h,
                    ),
                    const RichText_Widght(),
                    SizedBox(
                      height: 32.h,
                    ),
                    const Button_Text_Sign_Up()
                  ],
                ),
              )),
            ),
          );
        },
      ),
    );
  }
}
