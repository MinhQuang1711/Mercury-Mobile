import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';

import '../../../feature/domain/repositories/i_authen.dart';

void registerBloc() {
  getIt.registerFactory<AuthenBloc>(
      () => AuthenBloc(getIt.get<IAuthenRepository>()));
}
