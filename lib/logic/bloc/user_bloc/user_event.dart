part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

final class UserLoginEvent extends UserEvent {
  final String email;
  final String password;

  UserLoginEvent({required this.email, required this.password});
}
