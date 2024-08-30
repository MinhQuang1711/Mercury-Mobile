import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../widget/button/button.dart';

class SelectDaySheet extends StatelessWidget {
  const SelectDaySheet({super.key, this.initDate});
  final DateTime? initDate;

  @override
  Widget build(BuildContext context) {
    DateTime? date;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 400,
          child: DateCalender(
            initDate: initDate,
            callBackUpdateDate: (p0) => date = p0,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: AppPadding.padding14,
          child: AppButton(
            label: "Xác nhận",
            onTap: () => context.pop(date),
          ),
        )
      ],
    );
  }
}

class DateCalender extends StatefulWidget {
  const DateCalender({
    super.key,
    required this.callBackUpdateDate,
    this.initDate,
  });
  final DateTime? initDate;
  final Function(DateTime) callBackUpdateDate;

  @override
  State<DateCalender> createState() => _DateCalenderState();
}

class _DateCalenderState extends State<DateCalender> {
  DateTime? focusedDate;
  @override
  void initState() {
    focusedDate = widget.initDate;
    super.initState();
  }

  void _selectedDate(DateTime date, DateTime focusDate) {
    widget.callBackUpdateDate.call(focusDate);
    setState(() {
      focusedDate = focusDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: "vi",
      lastDay: DateTime(2050),
      firstDay: DateTime(2020),
      onDaySelected: _selectedDate,
      availableGestures: AvailableGestures.all,
      focusedDay: focusedDate ?? DateTime.now(),
      selectedDayPredicate: (day) => isSameDay(day, focusedDate),
    );
  }
}
