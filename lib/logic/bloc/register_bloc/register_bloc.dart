import 'package:bloc/bloc.dart';
import 'package:car_app/logic/repositories/register_repo.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterRegEvent>(_onReg);
  }
  _onReg(RegisterRegEvent event, Emitter<RegisterState> state) async {
    emit(RegisterWaitState());
    var result = await RegisterRepo.register(
        event.email, event.name, event.lName, event.pass);
    if (result == true) {
      emit(RegisterSuccessState());
    } else {
      emit(RegisterErrorState());
    }
  }
}
