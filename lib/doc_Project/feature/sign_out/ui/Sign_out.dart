import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/Theme/colors.dart';
import '../../../core/Widght/public_ElevatedButton.dart';
import '../../button_Navigation_Bar/ui/nav.dart';
import '../logic/cubit/sign_out_cubit.dart';
import 'widght/Form_Text_Input.dart';
import 'widght/TextAppBar_Widght.dart';
import 'widght/forgot_Password_Widght.dart';
import 'widght/richText_Widght.dart';
import 'widght/sing_In_widght.dart';

class SignOut extends StatefulWidget {
  @override
  State<SignOut> createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignOutCubit(),
      child: BlocConsumer<SignOutCubit, SignOutState>(
        listener: (context, state) {
          if (state is SignOutSuccess) {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => Button_Navigation_Bar(),
              ),
            );
          }
        },
        builder: (context, state) {
          final cubit = SignOutCubit.getObject(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 50.0.h, left: 30.0.h, right: 30.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text_AppBar_Widght(),
                    Form_Text_Input(
                      cubit: cubit,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Forgot_Password_Widght(cubit: cubit),
                    SizedBox(
                      height: 32.h,
                    ),
                    state is SignOutLoading &&
                            (state is! SignOutSuccess || state is! SignOutError)
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors_App.Best_Color,
                            ),
                          )
                        : public_ElevatedButton(
                            nameButton: "Sign Out",
                            onPressed: () {
                              if (cubit.keyState.currentState!.validate()) {
                                cubit.post_SignOut(
                                    name: cubit.controller_Name.text,
                                    phone: cubit.controller_Phone.text,
                                    email: cubit.controller_Email.text,
                                    password: cubit.controller_Password.text,
                                    conf_password:
                                        cubit.controller_Config_Password.text);
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
                    const Sign_In()
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
