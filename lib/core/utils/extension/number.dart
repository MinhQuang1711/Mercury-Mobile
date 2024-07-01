import 'dart:math';

import 'package:intl/intl.dart';

extension NumberEx on double {
  static double oneThounsand = 1000;
  static double oneMilion = 1000000;
  static double tenThounsebd = 10000;
  static double oneHunderedThousand = 100000;
  String getUnit() {
    return this < oneMilion ? " nghìn" : " triệu";
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
    this < oneMilion ? number = this / oneThounsand : number = this / oneMilion;
    return symbol == false
        ? number.formatDouble()
        : number.formatDouble() + getUnit();
  }

  int roundedNumber() {
    int lenght = toInt().toString().length - 1;
    int donVi = pow(10, lenght) as int;

    var firstNumber = int.tryParse(toString()[0]) ?? 0;

    var maxValue = firstNumber * donVi;
    if (this <= maxValue) {
      return maxValue;
    }
    return maxValue = (firstNumber + 1) * donVi;
  }
}
