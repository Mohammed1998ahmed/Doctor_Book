import 'package:DoctorBook/doc_Project/core/Networking/dio_Service.dart';
import 'package:DoctorBook/doc_Project/feature/profile_D/model/profile_Doctor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/Networking/constants.dart';
import '../../../../core/locel_Storage/shared_preferences.dart';

part 'profile_doctors_state.dart';

class ProfileDoctorsCubit extends Cubit<ProfileDoctorsState> {
  ProfileDoctorsCubit() : super(ProfileDoctorsInitial());

  static ProfileDoctorsCubit getObject(context) => BlocProvider.of(context);
  Profile_Doctor? profile_doctor;

  void get_Profile_Doctor({required int index}) {
    emit(ProfileDoctorsLoeding());
    DioService()
        .getRequest(Constants.profile_Doctor_Path + index.toString(),
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      profile_doctor = Profile_Doctor.fromJson(value.data);

      emit(ProfileDoctorsSucces());
    }).catchError((onError) {
      emit(ProfileDoctorsError());
    });
  }
}
