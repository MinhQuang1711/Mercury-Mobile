import 'package:flutter/material.dart';

import '../app_bar.dart';

abstract class FactoryAppBar {
  CustomAppBar create(BuildContext context);
}
