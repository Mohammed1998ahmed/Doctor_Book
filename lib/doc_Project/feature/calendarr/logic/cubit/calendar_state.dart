part of 'calendar_cubit.dart';

@immutable
sealed class CalendarState {}

final class CalendarInitial extends CalendarState {}

final class CalendarLoading extends CalendarState {}

final class CalendarSuecess extends CalendarState {}

final class CalendarError extends CalendarState {}

final class Calendar_Appointment_Loading extends CalendarState {}

final class Calendar_Appointment_Suecess extends CalendarState {}

final class Calendar_Appointment_Error extends CalendarState {}

final class CalendarChanged_Data extends CalendarState {}

final class CalendarChanged_Time extends CalendarState {}
