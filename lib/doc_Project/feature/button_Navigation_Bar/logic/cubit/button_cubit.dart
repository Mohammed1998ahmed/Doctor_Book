import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/Theme/colors.dart';
import '../../../calendarr/ui/widght/select_Doctor.dart';
import '../../../chat/ui/chat.dart';
import '../../../home/ui/home.dart';
import '../../../profile/ui/profile.dart';
import '../../../search/ui/search.dart';

part 'button_state.dart';

class ButtonCubit extends Cubit<ButtonState> {
  ButtonCubit() : super(ButtonInitial());

  static ButtonCubit getObject(context) => BlocProvider.of(context);
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> buildScreens() {
    // ignore: prefer_const_constructors
    return [Home(), Chat(), Search(), ListDoctors(), Profile()];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        // ignore: sized_box_for_whitespace
        icon: Container(
          width: 24.w,
          height: 24.h,
          child: SvgPicture.asset(
            "assets/svg/home.svg",
            // color: Colors.blue,
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          width: 24.w,
          height: 24.h,
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 24.w,
                height: 24.h,
                child: SvgPicture.asset(
                  "assets/svg/message-text.svg",
                  fit: BoxFit.contain,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 4,
              )
            ],
          ),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          width: 24.w,
          height: 24.h,
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/svg/search-normal.svg",
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors_App.Best_Color,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          width: 24.w,
          height: 24.h,
          child: SvgPicture.asset(
            "assets/svg/calendar.svg",
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors_App.Best_Color,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          width: 24.w,
          height: 24.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/image/profile.png",
                  ),
                  fit: BoxFit.contain)),
        ),
        activeColorPrimary: Colors_App.Best_Color,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
