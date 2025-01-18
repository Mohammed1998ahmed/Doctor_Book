import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBar_Widght extends StatelessWidget {
  const AppBar_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          alignment: Alignment.center,
          child: IconButton(onPressed: () {}, icon:const Icon(Icons.arrow_back_ios)),
        ),
        Container(
          width: 250.w,
          child:const Text(
            "Reschedule",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
