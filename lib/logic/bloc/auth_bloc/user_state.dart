part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoginingState extends AuthState {}

final class AuthLoginSuccesState extends AuthState {}

final class AuthLoginErrorState extends AuthState {}
