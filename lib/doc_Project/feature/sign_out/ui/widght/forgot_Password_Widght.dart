import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theme/colors.dart';
import '../../../../core/Theme/textStyle.dart';
import '../../logic/cubit/sign_out_cubit.dart';

class Forgot_Password_Widght extends StatefulWidget {
  const Forgot_Password_Widght({
    super.key,
    required this.cubit,
  });

  final SignOutCubit cubit;

  @override
  State<Forgot_Password_Widght> createState() => _Forgot_Password_WidghtState();
}

class _Forgot_Password_WidghtState extends State<Forgot_Password_Widght> {
  @override
  Widget build(BuildContext context) {
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
                  value: widget.cubit.Checkboxbool,
                  onChanged: (value) {
                    setState(() {
                      widget.cubit.Checkboxbool = value!;
                    });
                  }),
              Text(
                "Remember me",
                style: TextStyle_App.Remember_Text_From_Style,
              )
            ],
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle_App.Forgot_PassWord_Text_From_Style,
            ),
          ),
        ],
      ),
    );
  }
}
