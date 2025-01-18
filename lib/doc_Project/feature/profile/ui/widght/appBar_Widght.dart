import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBar_Widght extends StatelessWidget {
  const AppBar_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          Container(
            child: Text(
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class Profile_bar extends StatelessWidget {
  const Profile_bar({
    super.key,
    required this.textbar,
    required this.nameImage,
    required this.onTap,
    this.color,
  });
  final String textbar;
  final String nameImage;
  final void Function() onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 327.w,
        height: 58.h,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/image/${nameImage}",
                        ),
                      ),
                      color: color ?? Color(0xffEAF2FF)),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  textbar,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff242424)),
                )
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
