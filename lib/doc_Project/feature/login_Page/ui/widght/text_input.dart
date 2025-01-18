// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Widght/public_TextFrom.dart';
import '../../logic/cubit/login_cubit.dart';

class Form_Input extends StatefulWidget {
  const Form_Input({super.key});

  @override
  State<Form_Input> createState() => _Form_InputState();
}

class _Form_InputState extends State<Form_Input> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = LoginCubit.getObject(context);
        return Form(
            key: cubit.keyState,
            child: Column(
              children: [
                publicTextFromField(
                    hintText: 'Email',
                    validator: (value) =>
                        value!.isEmpty ? 'Email cannot be blank' : null,
                    keyboardType: TextInputType.emailAddress,
                    controller: cubit.controller_Email),
                SizedBox(
                  height: 10.h,
                ),
                publicTextFromField(
                    hintText: 'Password',
                    validator: (value) =>
                        value!.isEmpty ? 'Password cannot be blank' : null,
                    controller: cubit.controller_Password,
                    obscureText: cubit.obscureText,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            cubit.obscureText = !cubit.obscureText;
                          });
                        },
                        icon: Icon(cubit.obscureText == true
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ],
            ));
      },
    );
  }
}
