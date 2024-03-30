part of 'user_bloc.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoginingState extends UserState {}

final class UserLoginSuccesState extends UserState {}

final class UserLoginErrorState extends UserState {}
