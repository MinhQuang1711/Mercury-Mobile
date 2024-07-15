import 'package:shared_preferences/shared_preferences.dart';

class DomainStorage {
  DomainStorage._();
  static final instance = DomainStorage._();

  final _domainKey = "domainKey";

  void saveDomain(String? domain) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_domainKey, domain ?? "");
  }

  Future<String> getDomain() async {
    final prefs = await SharedPreferences.getInstance();
    String? domain = prefs.getString(_domainKey);
    return domain ?? "";
  }
}
