import 'package:intl/intl.dart';

List<String> weekdays = [
  'Chủ Nhật',
  'Thứ Hai',
  'Thứ Ba',
  'Thứ Tư',
  'Thứ Năm',
  'Thứ Sáu',
  'Thứ Bảy'
];

extension DateExtensions on DateTime {
  String getName() {
    var dateNow = DateTime.now();
    if (year == dateNow.year && month == dateNow.month && day == dateNow.day) {
      return "Hôm nay";
    }
    var yesterday = dateNow.add(const Duration(days: -1));
    if (year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day) {
      return "Hôm qua";
    }
    return toDateFormat();
  }

  String toExtractTime() {
    String dateName = weekdays[toLocal().weekday % 7];

    return "$dateName: ${DateFormat('dd/MM/yyyy, HH:mm').format(toLocal())}";
  }

  String toDateFormat() {
    return DateFormat('dd/MM/yyyy').format(toLocal());
  }

  String toTimeOfDay() {
    return DateFormat('HH:mm:ss').format(toLocal());
  }

  String toMinuteAndSecond() {
    return DateFormat('mm:ss').format(toLocal());
  }
}
