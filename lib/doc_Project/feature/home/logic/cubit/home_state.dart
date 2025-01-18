part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {}

final class HomeError extends HomeState {}

final class Home_Doctor_Loading extends HomeState {}

final class Home_Doctor_Success extends HomeState {}

final class Home_Doctor_Error extends HomeState {}
