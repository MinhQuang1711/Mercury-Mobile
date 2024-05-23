import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/splash/state/state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState(0));
  void changedTab(int val) {
    emit(state.copyWith(index: val));
  }
}
