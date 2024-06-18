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

  String formatNumber() {
    if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(2)} triệu';
    } else {
      final format = NumberFormat.currency(locale: 'vi_VN', symbol: 'VND');
      return format.format(this);
    }
  }
}
