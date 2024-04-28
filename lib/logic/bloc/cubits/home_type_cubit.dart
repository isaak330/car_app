import 'package:bloc/bloc.dart';

class HomeTypeCubit extends Cubit<HomeTypeState> {
  HomeTypeCubit() : super(const HomeTypeState(type: true));

  void changeType() {
    emit(HomeTypeState(type: !state.type));
  }
}

class HomeTypeState {
  final bool type;
  const HomeTypeState({required this.type});
}
