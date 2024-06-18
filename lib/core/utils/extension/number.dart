import 'package:intl/intl.dart';

extension NumberEx on double {
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
    if (this >= 1000000) {
      String formated = (this / 1000000).toStringAsFixed(2);
      return symbol == false ? formated : '$formated triệu';
    } else {
      final format = NumberFormat.currency(
          locale: 'vi_VN', symbol: symbol == false ? "" : 'VND');
      return format.format(this);
    }
  }
}
