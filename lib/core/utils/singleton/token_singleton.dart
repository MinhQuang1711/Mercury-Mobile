// ignore_for_file: unused_field

import 'package:mercury/feature/data/model/token/token.dart';

class TokenSingleton {
  TokenSingleton._();
  static final instance = TokenSingleton._();
  Token? _token;
  void saveToken(Token? token) {
    _token = token;
  }

  Token? get token => _token;
}
