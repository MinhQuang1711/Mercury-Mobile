// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../config/theme/text_style.dart';
import '../../../domain/model/combo_box/combo_box.dart';

class AppItemField {
  static SearchFieldListItem<ComboBox> comboBox(ComboBox val) {
    return SearchFieldListItem<ComboBox>(val.name ?? "",
        item: val, child: _item(val.name ?? ""));
  }

  static Text _item(String value) {
    return Text(
      "   $value",
      style: captionRegular,
    );
  }
}
