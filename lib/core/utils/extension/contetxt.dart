import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/radius.dart';

import '../../../feature/presentations/widget/snack_bar.dart';

extension ContextEx on BuildContext {
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
          showSuccesSnackBar(msg);
          handleWhenHasValue?.call();
        }
      });

  void showDialogAndListen({
    required Widget child,
    Function()? handleWhenHasValue,
  }) {
    showDialog<String>(
      context: this,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: AppContainerBorder.radius8,
        ),
        child: child,
      ),
    ).then((msg) {
      if (msg != null) {
        showSuccesSnackBar(msg);
        handleWhenHasValue?.call();
      }
    });
  }
}
