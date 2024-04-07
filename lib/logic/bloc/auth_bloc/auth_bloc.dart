import 'package:bloc/bloc.dart';
import 'package:car_app/logic/repositories/auth_repo.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginEvent>(_onLogin);
  }

  _onLogin(AuthLoginEvent event, Emitter<AuthState> state) async {
    emit(AuthLoginingState());
    final result = await AuthRepo.logIn(event.email, event.password);
    if (result == true) {
      emit(AuthLoginSuccesState());
    } else {
      emit(AuthLoginErrorState());
    }
  }
}
