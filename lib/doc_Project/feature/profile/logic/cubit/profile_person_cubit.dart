import 'package:bloc/bloc.dart';
import 'package:DoctorBook/doc_Project/core/Networking/constants.dart';
import 'package:DoctorBook/doc_Project/core/Networking/dio_Service.dart';
import 'package:DoctorBook/doc_Project/core/locel_Storage/shared_preferences.dart';
import 'package:DoctorBook/doc_Project/feature/profile/model/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'profile_person_state.dart';

class ProfilePersonCubit extends Cubit<ProfilePersonState> {
  ProfilePersonCubit() : super(ProfilePersonInitial());
  static ProfilePersonCubit getObject(context) => BlocProvider.of(context);
  Profile_model? profile_model;
  void get_Profile_Persone() {
    emit(ProfilePersonLoading());
    DioService()
        .getRequest(Constants.ProfilePerson_Path,
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      profile_model = Profile_model.fromJson(value.data);
      emit(ProfilePersonSucess());
    }).catchError((onError) {
      emit(ProfilePersonError());
    });
  }
}
