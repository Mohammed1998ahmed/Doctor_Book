import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:DoctorBook/doc_Project/core/Networking/dio_Service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/Networking/constants.dart';

part 'sign_out_state.dart';

class SignOutCubit extends Cubit<SignOutState> {
  SignOutCubit() : super(SignOutInitial());
  static SignOutCubit getObject(context) => BlocProvider.of(context);

  final keyState = GlobalKey<FormState>();

  bool obscureText = false;
  bool obscureText_Conf_Password = false;

  bool Checkboxbool = false;
  TextEditingController controller_Name = TextEditingController();
  TextEditingController controller_Email = TextEditingController();
  TextEditingController controller_Phone = TextEditingController();

  TextEditingController controller_Config_Password = TextEditingController();

  TextEditingController controller_Password = TextEditingController();

  void post_SignOut(
      {required String name,
      required String email,
      required String phone,
      required String password,
      required String conf_password}) {
    final formdata = FormData.fromMap({
      'name': name,
      'email': email,
      'phone': phone,
      'gender': '0',
      'password': password,
      'password_confirmation': conf_password
    });
    emit(SignOutLoading());
    DioService()
        .postRequest(Constants.Sign_Out_Path, data: formdata)
        .then((value) {
      emit(SignOutSuccess());
    }).catchError((onError) {
      emit(SignOutError());
    });
  }
}
