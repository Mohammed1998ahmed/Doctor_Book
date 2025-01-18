import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doc_Project/core/Networking/dio_Service.dart';
import 'doc_Project/core/helpers/blocObserver.dart';
import 'doc_Project/core/locel_Storage/shared_preferences.dart';

import 'doc_Project/feature/login_Page/logic/cubit/login_cubit.dart';
import 'doc_Project/feature/login_Page/ui/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService().init();
  DioService();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: BlocProvider(
        create: (context) => LoginCubit(),
        child: LoginPage(),
      ),
    );
  }
}
