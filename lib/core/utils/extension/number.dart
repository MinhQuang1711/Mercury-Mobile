import 'package:intl/intl.dart';

extension NumberEx on double {
  String formatNumber() {
    if (this == roundToDouble()) {
      return NumberFormat('#,###', 'vi').format(this);
    } else {
      // Sử dụng NumberFormat để định dạng số với 1-2 chữ số sau dấu phẩy
      var formatter = NumberFormat('#,###.##', 'vi');
      return formatter.format(this);
    }
  }
}
