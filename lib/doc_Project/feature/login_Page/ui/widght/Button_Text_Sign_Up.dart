// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../../../core/Theme/textStyle.dart';
import '../../../sign_out/ui/Sign_out.dart';

class Button_Text_Sign_Up extends StatelessWidget {
  const Button_Text_Sign_Up({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account yet?",
          style: TextStyle_App.First_line_Style,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => SignOut(),
              ),
            );
          },
          child: const Text(
            " Sign Up ",
            style: TextStyle_App.Forgot_PassWord_Text_From_Style,
          ),
        ),
      ],
    );
  }
}
