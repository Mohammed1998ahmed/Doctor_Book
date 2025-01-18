import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:DoctorBook/doc_Project/feature/calendarr/data/appointment_Model.dart';
import 'package:DoctorBook/doc_Project/feature/calendarr/data/get_All_Doctor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/Networking/constants.dart';
import '../../../../core/Networking/dio_Service.dart';
import '../../../../core/locel_Storage/shared_preferences.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarInitial());
  static CalendarCubit getObject(context) => BlocProvider.of(context);

  GetDoctorModel? getDoctorModel;

  void get_Doctor_model() {
    emit(CalendarLoading());
    DioService()
        .getRequest(Constants.home_Doctor_Path,
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      getDoctorModel = GetDoctorModel.fromJson(value.data);
      emit(CalendarSuecess());
    }).catchError((onError) {
      emit(CalendarError());
    });
  }

  Appointment_Model? appointment_model;
  void post_Appointment({required int doctor_id, required String start_time}) {
    final fromdata =
        FormData.fromMap({"doctor_id": doctor_id, "start_time": start_time});

    emit(Calendar_Appointment_Loading());

    DioService()
        .postRequest(Constants.appointment_Path,
            token: SharedPreferencesService().getString(key: "token"),
            data: fromdata)
        .then((value) {
      appointment_model = Appointment_Model.fromJson(value.data);
      emit(Calendar_Appointment_Suecess());
    }).catchError((onError) {
      emit(Calendar_Appointment_Error());
    });
  }

  String? fromData;
  void chang_Data({required String data1}) {
    this.fromData = data1;
    emit(CalendarChanged_Data());
  }

  String? fromTime;
  void chang_Time({required String time1}) {
    this.fromTime = time1;
    emit(CalendarChanged_Time());
  }
}
