// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/radius.dart';

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
  }) async {
    return await showDialog<T>(
      context: this,
      builder: (_) => Dialog(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: AppContainerBorder.radius8,
        ),
        child: child,
      ),
    );
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

  Future<DateTimeRange?> showAppDateRangePicker({
    DateTime? firstDate,
    DateTime? lastDate,
    DateTimeRange? initDateRange,
  }) async {
    return await showAppDialog<DateTimeRange?>(
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
  }
}
