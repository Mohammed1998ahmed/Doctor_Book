import 'package:DoctorBook/doc_Project/core/Networking/dio_Service.dart';
import 'package:DoctorBook/doc_Project/feature/list_Doctor/model/list_Doctors_Model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/Networking/constants.dart';
import '../../../../core/locel_Storage/shared_preferences.dart';

part 'list_doctor_state.dart';

class ListDoctorCubit extends Cubit<ListDoctorState> {
  ListDoctorCubit() : super(ListDoctorInitial());
  static ListDoctorCubit getObject(context) => BlocProvider.of(context);
  List_Doctor? list_doctor;
  void get_List_Doctor({required int index_Departments}) {
    emit(ListDoctorLoeding());
    DioService()
        .getRequest(
            Constants.list_Doctor_by_Departments_Path +
                index_Departments.toString(),
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      list_doctor = List_Doctor.fromJson(value.data);
      emit(ListDoctorSucess());
    }).catchError((onError) {
      emit(ListDoctorError());
    });
  }
}
