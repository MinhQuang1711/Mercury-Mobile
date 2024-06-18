import 'package:intl/intl.dart';

extension NumberEx on double {
  String getUnit() {
    if (this > 1000 && this < 1000000) {
      return " nghìn";
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
    double oneMilion = 1000000;
    double oneThousand = 1000;
    double oneHunderedThousand = 100000;
    if (this >= oneThousand && this < oneHunderedThousand) {
      String formated = (this / oneThousand).formatDouble();
      return symbol == false ? formated : getUnit();
    }

    String formated = (this / oneMilion).toStringAsFixed(2);
    return symbol == false ? formated : '$formated triệu';
  }
}
