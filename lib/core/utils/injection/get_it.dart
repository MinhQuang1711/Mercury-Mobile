import 'package:get_it/get_it.dart';

import 'bloc.dart';
import 'cubit.dart';
import 'repositories.dart';

var getIt = GetIt.instance;
void initInjection() {
  registerRepository();
  registerBloc();
  registerCubit();
}
