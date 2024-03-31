import 'package:bloc/bloc.dart';
import 'package:car_app/logic/repositories/auth_repo.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UserLoginEvent>(_onLogin);
  }

  _onLogin(UserLoginEvent event, Emitter<UserState> state) async {
    emit(UserLoginingState());
    final result = await AuthRepo.logIn(event.email, event.password);
    if (result == true) {
      emit(UserLoginSuccesState());
    } else {
      emit(UserLoginErrorState());
    }
  }
}
