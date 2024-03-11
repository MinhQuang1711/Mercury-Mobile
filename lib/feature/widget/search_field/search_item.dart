// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import '../../../config/theme/text_style.dart';

class AppItemField {
  static Text _item(String value) {
    return Text(
      "   $value",
      style: captionRegular,
    );
  }
}
