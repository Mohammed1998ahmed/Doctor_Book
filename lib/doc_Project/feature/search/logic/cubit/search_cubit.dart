import 'package:DoctorBook/doc_Project/core/Networking/constants.dart';
import 'package:DoctorBook/doc_Project/core/Networking/dio_Service.dart';
import 'package:DoctorBook/doc_Project/feature/search/data/Search_Doctor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/locel_Storage/shared_preferences.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  static SearchCubit getObject(context) => BlocProvider.of(context);

  bool isTogel_1 = false;
  bool isTogel_2 = false;
  bool isTogel_3 = false;
  bool isTogel_4 = false;

  Search_Doctor? searchDoctor;
  void get_Search({required String nameSearch}) {
    emit(SearchLoading());

    DioService()
        .getRequest(Constants.Search_Path,
            queryParameters: {"name": nameSearch},
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      searchDoctor = Search_Doctor.fromJson(value.data);
      emit(SearchSuecess());
    }).catchError((onError) {
      emit(SearchError());
    });
  }
}
