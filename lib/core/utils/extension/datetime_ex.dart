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
