import 'package:flutter/material.dart';

import '../../../../core/Theme/textStyle.dart';

class Sign_In extends StatelessWidget {
  const Sign_In({
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
          onTap: () {},
          child: const Text(
            " Sign In ",
            style: TextStyle_App.Forgot_PassWord_Text_From_Style,
          ),
        ),
      ],
    );
  }
}
