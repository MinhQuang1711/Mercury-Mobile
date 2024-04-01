class Validator {
  static String? required(String? val) {
    if (val == null || val.isEmpty) {
      return "Trường này là bắt buộc";
    }
    return null;
  }

  static String? password(String? val) {
    var message = required(val);
    if (message != null) {
      return message;
    }
    String passwordPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(passwordPattern);
    // Da validate null value o tren
    if (!regex.hasMatch(val!)) {
      return "Mật khẩu không đúng định dạng";
    }
    return null;
  }

  static String? doubleOrNull(String? val) {
    final result = double.tryParse(val ?? "");
    if (result == null) {
      return "Không đúng định dạng số";
    }
    return null;
  }
}
