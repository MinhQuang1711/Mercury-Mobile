import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';

void registerCubit() {
  getIt.registerFactory<AuthenCubit>(() => AuthenCubit());
}
