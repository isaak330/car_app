part of 'register_bloc.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterWaitState extends RegisterState {}

final class RegisterSuccessState extends RegisterState {}

final class RegisterErrorState extends RegisterState {}
