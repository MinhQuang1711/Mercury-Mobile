// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/text_style.dart';

import '../../../config/theme/color.dart';
import '../../../feature/presentations/widget/snack_bar.dart';

extension ContextEx on BuildContext {
  void _handleSuccess(String msg, Function()? handleWhenHasValue) {
    showSuccesSnackBar(msg);
    handleWhenHasValue?.call();
  }

  void showSuccesSnackBar(String msg) {
    ScaffoldMessenger.of(this).showSnackBar(
      AppSnackbar(
        context: this,
        content: msg,
        isSuccess: true,
      ),
    );
  }

  void showFailureSnackBar(String msg) {
    ScaffoldMessenger.of(this).showSnackBar(
      AppSnackbar(
        context: this,
        content: msg,
        isSuccess: false,
      ),
    );
  }

  void pushAndListen<T>({
    T? object,
    required String location,
    Function()? handleWhenHasValue,
  }) =>
      push<String>(location, extra: object).then((msg) {
        if (msg != null) {
          _handleSuccess(msg, handleWhenHasValue);
        }
      });

  void showDialogAndListen({
    required Widget child,
    Function()? handleWhenHasValue,
  }) {
    showDialog<String>(
      context: this,
      builder: (_) => Dialog(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: AppContainerBorder.radius8,
        ),
        child: child,
      ),
    ).then((msg) {
      if (msg != null) {
        _handleSuccess(msg, handleWhenHasValue);
      }
    });
  }

  Future<T?> showAppDialog<T>({
    required Widget child,
    String? title,
    EdgeInsets? insertPadding,
  }) async {
    return await showDialog<T>(
      context: this,
      builder: (_) => Dialog(
        insetPadding:
            insertPadding ?? const EdgeInsets.symmetric(horizontal: 10),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: AppContainerBorder.radius8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: AppPadding.padding12,
              child: Row(
                children: [
                  if (title != null)
                    Text(title, style: bodyBold.copyWith(color: AppColor.blue)),
                  const Spacer(),
                  GestureDetector(
                    onTap: pop,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.grey2,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }

  Future<T?> showBottomSheet<T>(Widget child) async {
    var result = await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      context: this,
      shape: RoundedRectangleBorder(borderRadius: AppContainerBorder.radius12),
      builder: (_) => Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: child,
      ),
    );
    return result;
  }

  void showBottomSheetAndListen({
    Widget? child,
    Function()? handleWhenHasValue,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      context: this,
      shape: RoundedRectangleBorder(borderRadius: AppContainerBorder.radius12),
      builder: (_) => Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: child,
      ),
    ).then((msg) {
      if (msg != null) {
        _handleSuccess(msg, handleWhenHasValue);
      }
    });
  }

  Future<DateTime?> showAppDatePicker({
    DateTime? firstDate,
    DateTime? lastDate,
    DateTime? initDate,
  }) async {
    var date = await showAppDialog<DateTime?>(
      child: SizedBox(
        height: MediaQuery.of(this).size.height * 0.7,
        child: DatePickerDialog(
          initialDate: initDate,
          helpText: "Chọn ngày",
          firstDate: firstDate ?? DateTime.now(),
          lastDate: lastDate ?? DateTime(2030),
        ),
      ),
    );
    return date;
  }

  Future<DateTimeRange?> showAppDateRangePicker({
    DateTime? firstDate,
    DateTime? lastDate,
    DateTimeRange? initDateRange,
  }) async {
    var dateRanged = await showAppDialog<DateTimeRange?>(
      child: SizedBox(
        height: MediaQuery.of(this).size.width,
        child: DateRangePickerDialog(
          saveText: "Xác nhận",
          helpText: "Chọn khoảng ngày",
          initialDateRange: initDateRange,
          lastDate: lastDate ?? DateTime(2030),
          firstDate: firstDate ?? DateTime(2020),
          initialEntryMode: DatePickerEntryMode.calendarOnly,
        ),
      ),
    );

    return dateRanged != null
        ? DateTimeRange(
            start: dateRanged.start,
            end: dateRanged.end.copyWith(hour: 23, minute: 59, second: 59))
        : null;
  }
}
