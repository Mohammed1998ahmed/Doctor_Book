import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Widght/public_TextFrom.dart';
import '../../logic/cubit/sign_out_cubit.dart';

class Form_Text_Input extends StatefulWidget {
  const Form_Text_Input({Key? key, required this.cubit}) : super(key: key);
  final SignOutCubit cubit;

  @override
  State<Form_Text_Input> createState() => _Form_Text_InputState();
}

class _Form_Text_InputState extends State<Form_Text_Input> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignOutCubit, SignOutState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
            key: widget.cubit.keyState,
            child: Column(
              children: [
                publicTextFromField(
                    hintText: 'Name',
                    validator: (value) =>
                        value!.isEmpty ? 'Name cannot be blank' : null,
                    keyboardType: TextInputType.name,
                    controller: widget.cubit.controller_Name),
                SizedBox(
                  height: 10.h,
                ),
                publicTextFromField(
                    hintText: 'Email',
                    validator: (value) =>
                        value!.isEmpty ? 'Email cannot be blank' : null,
                    keyboardType: TextInputType.emailAddress,
                    controller: widget.cubit.controller_Email),
                SizedBox(
                  height: 10.h,
                ),
                publicTextFromField(
                    hintText: 'Phone',
                    validator: (value) =>
                        value!.isEmpty ? 'Phone cannot be blank' : null,
                    keyboardType: TextInputType.phone,
                    controller: widget.cubit.controller_Phone),
                SizedBox(
                  height: 10.h,
                ),
                publicTextFromField(
                    hintText: 'Password',
                    validator: (value) =>
                        value!.isEmpty ? 'Password cannot be blank' : null,
                    controller: widget.cubit.controller_Password,
                    obscureText: widget.cubit.obscureText,
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.cubit.obscureText =
                                !widget.cubit.obscureText;
                          });
                        },
                        icon: Icon(widget.cubit.obscureText == true
                            ? Icons.visibility
                            : Icons.visibility_off))),
                SizedBox(
                  height: 10.h,
                ),
                publicTextFromField(
                    hintText: 'password_confirmation',
                    validator: (value) =>
                        value!.isEmpty ? 'Password cannot be blank' : null,
                    controller: widget.cubit.controller_Config_Password,
                    obscureText: widget.cubit.obscureText_Conf_Password,
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.cubit.obscureText_Conf_Password =
                                !widget.cubit.obscureText_Conf_Password;
                          });
                        },
                        icon: Icon(
                            widget.cubit.obscureText_Conf_Password == true
                                ? Icons.visibility
                                : Icons.visibility_off))),
              ],
            ));
      },
    );
  }
}
