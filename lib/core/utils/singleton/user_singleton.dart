// ignore_for_file: unused_field

import 'package:mercury/feature/data/model/user/user.dart';

class UserSingleton {
  UserSingleton._();
  static final instance = UserSingleton._();
  User? _user;
  void saveUser(User? user) {
    _user = user;
  }

  User? get user => _user;
}
