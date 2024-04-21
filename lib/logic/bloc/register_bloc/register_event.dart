part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

final class RegisterRegEvent extends RegisterEvent {
  final String email;
  final String name;
  final String lName;
  final String pass;

  RegisterRegEvent(
      {required this.email,
      required this.name,
      required this.lName,
      required this.pass});
}
