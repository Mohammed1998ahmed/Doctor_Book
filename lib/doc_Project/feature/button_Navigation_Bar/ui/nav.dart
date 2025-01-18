import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../logic/cubit/button_cubit.dart';

class Button_Navigation_Bar extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonCubit(),
      child: BlocConsumer<ButtonCubit, ButtonState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = ButtonCubit.getObject(context);
          return Scaffold(
            body: PersistentTabView(
              context,
              controller: cubit.controller,
              screens: cubit.buildScreens(),
              items: cubit.navBarsItems(),
              navBarStyle: NavBarStyle.style16, // استخدام Style16
            ),
          );
        },
      ),
    );
  }
}
