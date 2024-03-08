import 'dart:developer';

import 'package:flutter/foundation.dart';

void logError(Object? object) {
  if (kDebugMode || kProfileMode || kReleaseMode) {
    log(object.toString());
  }
}