import 'package:intl/intl.dart';

extension NumberEx on double {
  static double oneThounsand = 1000;
  static double oneMilion = 1000000;
  static double tenThounsebd = 10000;
  static double oneHunderedThousand = 100000;
  String getUnit() {
    if (this < oneHunderedThousand) {
      return " nghìn";
    } else if (this < oneMilion) {
      return " trăm nghìn";
    }
    return " triệu";
  }

  String formatDouble() {
    if (this == roundToDouble()) {
      return NumberFormat('#,###', 'vi').format(this);
    } else {
      // Sử dụng NumberFormat để định dạng số với 1-2 chữ số sau dấu phẩy
      var formatter = NumberFormat('#,###.##', 'vi');
      return formatter.format(this);
    }
  }

  String formatNumber({bool? symbol}) {
    double number = this;
    if (this < oneHunderedThousand) {
      number = this / oneThounsand;
    } else if (this < oneMilion) {
      number = this / oneThounsand;
    } else {
      number = this / oneMilion;
    }

    return symbol == false
        ? number.formatDouble()
        : number.formatDouble() + getUnit();
  }
}
