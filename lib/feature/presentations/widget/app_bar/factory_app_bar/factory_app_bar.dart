import 'package:flutter/material.dart';

import '../app_bar.dart';

abstract class FactoryAppBar {
  String getTitle();
  CustomAppBar create(BuildContext context);
}
