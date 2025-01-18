import 'package:dio/dio.dart';
import 'package:DoctorBook/doc_Project/core/Networking/constants.dart';
import 'package:DoctorBook/doc_Project/core/Networking/dio_Service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/locel_Storage/shared_preferences.dart';
import '../../data/login.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit getObject(context) => BlocProvider.of(context);
  Login? login;

  bool obscureText = false;
  bool Checkboxbool = false;
  TextEditingController controller_Email = TextEditingController();
  TextEditingController controller_Password = TextEditingController();
  final keyState = GlobalKey<FormState>();

  void postLogin({required String email, required String password}) {
    emit(LoginLoading());
    FormData formData =
        FormData.fromMap({"email": email, "password": password});
    DioService().postRequest(Constants.loginPath, data: formData).then((value) {
      login = Login.fromJson(value.data);
      SharedPreferencesService()
          .setString(key: "token", value: login!.data!.token.toString());
      if (value.statusCode == 200) emit(LoginSuccess());
    }).catchError((onError) {
      print(onError.toString());
      emit(LoginError());
    });
  }
}
