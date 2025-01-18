part of 'profile_doctors_cubit.dart';

@immutable
sealed class ProfileDoctorsState {}

final class ProfileDoctorsInitial extends ProfileDoctorsState {}

final class ProfileDoctorsLoeding extends ProfileDoctorsState {}

final class ProfileDoctorsError extends ProfileDoctorsState {}

final class ProfileDoctorsSucces extends ProfileDoctorsState {}
