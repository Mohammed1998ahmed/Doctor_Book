part of 'profile_person_cubit.dart';

@immutable
sealed class ProfilePersonState {}

final class ProfilePersonInitial extends ProfilePersonState {}

final class ProfilePersonLoading extends ProfilePersonState {}

final class ProfilePersonSucess extends ProfilePersonState {}

final class ProfilePersonError extends ProfilePersonState {}
