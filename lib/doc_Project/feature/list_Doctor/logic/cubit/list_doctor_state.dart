part of 'list_doctor_cubit.dart';

sealed class ListDoctorState {}

final class ListDoctorInitial extends ListDoctorState {}

final class ListDoctorLoeding extends ListDoctorState {}

final class ListDoctorSucess extends ListDoctorState {}

final class ListDoctorError extends ListDoctorState {}
