import 'package:bloc/bloc.dart';
import 'package:DoctorBook/doc_Project/core/Networking/dio_Service.dart';
import 'package:DoctorBook/doc_Project/core/locel_Storage/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/Networking/constants.dart';
import '../../data/model/get_Doctor_model.dart';
import '../../data/model/get_Specializationn.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit getOblect(context) => BlocProvider.of(context);

  GetSpecialization? getspecializationn;
  void get_Specializationn() {
    emit(HomeLoading());
    DioService()
        .getRequest(Constants.home_Specialization_Path,
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      getspecializationn = GetSpecialization.fromJson(value.data);
      emit(HomeSuccess());
    }).catchError((onError) {
      emit(HomeError());
    });
  }

  GetDoctorModel? getDoctorModel;

  void get_Doctor_model() {
    emit(Home_Doctor_Loading());
    DioService()
        .getRequest(Constants.home_Doctor_Path,
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      getDoctorModel = GetDoctorModel.fromJson(value.data);
      emit(Home_Doctor_Success());
    }).catchError((onError) {
      emit(Home_Doctor_Error());
    });
  }
}
