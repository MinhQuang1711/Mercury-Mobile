import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/repositories/i_authen.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/state/state.dart';

class AuthenBloc extends Bloc<AuthenEvent, AuthenState> {
  final IAuthenRepository repo;
  AuthenBloc(this.repo) : super(const AuthenState.init()) {
    on<AuthenEvent>(_onEvent);
  }

  Future _onEvent(AuthenEvent event, Emitter emitter) async {
    await event.map(
      login: (event) async => await _login(event, emitter),
    );
  }

  Future _login(LOGIN event, Emitter emitter) async {
    emitter(const AuthenState.loading());
    (await repo.login(event.dto)).on(
      whenSuccess: (data) => emitter(AuthenState.loginSuccess(data)),
      whenFaild: (msg) => emitter(AuthenState.failure(msg)),
    );
  }
}
