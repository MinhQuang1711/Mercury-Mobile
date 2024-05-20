import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/core/utils/singleton/user_singleton.dart';
import 'package:mercury/feature/data/model/user/user.dart';
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
      getUser: (event) async => await _getUser(event, emitter),
    );
  }

  Future _login(LOGIN event, Emitter emitter) async {
    emitter(const AuthenState.loading());
    (await repo.login(event.dto)).on(
      whenFaild: (msg) => emitter(AuthenState.failure(msg)),
      whenSuccess: (data) => emitter(AuthenState.loginSuccess(data)),
    );
  }

  Future _getUser(GET_USER event, Emitter emitter) async {
    emitter(const AuthenState.loading());
    (await repo.getUser()).on(
      whenSuccess: (data) {
        _saveUser(data);
        emitter(const AuthenState.gotUser());
      },
      whenFaild: (msg) => emitter(AuthenState.failure(msg)),
    );
  }

  void _saveUser(User? user) {
    UserSingleton.instance.saveUser(user);
  }
}
