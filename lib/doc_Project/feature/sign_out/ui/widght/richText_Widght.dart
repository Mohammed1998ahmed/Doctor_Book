import 'package:flutter/material.dart';

import '../../../../core/Theme/textStyle.dart';

class RichText_Widght extends StatelessWidget {
  const RichText_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'By logging, you agree to our',
                style: TextStyle_App.First_line_Style),
            TextSpan(
                text: ' Terms & Conditions',
                style: TextStyle_App.Second_line_Style),
            TextSpan(text: ' and ', style: TextStyle_App.First_line_Style),
            TextSpan(
                text: ' PrivacyPolicy', style: TextStyle_App.Second_line_Style),
          ],
        ),
      ),
    );
  }
}
