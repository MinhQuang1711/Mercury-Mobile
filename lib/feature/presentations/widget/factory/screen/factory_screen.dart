import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/app_bar/app_bar.dart';

abstract class FactoryScreen {
  String getTitle();
  CustomAppBar createAppBar(BuildContext context);
}
