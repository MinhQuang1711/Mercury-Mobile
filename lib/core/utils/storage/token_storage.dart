// ignore_for_file: unused_field

import 'dart:convert';

import 'package:mercury/core/utils/log.dart';
import 'package:mercury/feature/data/model/token/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenStorage {
  TokenStorage._();
  static final instance = TokenStorage._();
  final String _tokenKey = "Token";

  void saveToken({
    required Token token,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    var jsonString = jsonEncode(token.toJson());
    prefs.setString(_tokenKey, jsonString);
  }

  Future<String?> _getJsonToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  Future<Token?> getToken() async {
    var jsonToken = await _getJsonToken();
    try {
      return Token.fromJson(jsonDecode(jsonToken ?? ""));
    } catch (e) {
      logError(e);
      return null;
    }
  }
}
