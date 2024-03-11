import 'package:flutter/material.dart';

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
}
