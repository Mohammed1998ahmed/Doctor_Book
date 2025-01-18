part of 'sign_out_cubit.dart';

@immutable
sealed class SignOutState {}

final class SignOutInitial extends SignOutState {}

final class SignOutLoading extends SignOutState {}

final class SignOutSuccess extends SignOutState {}

final class SignOutError extends SignOutState {}
