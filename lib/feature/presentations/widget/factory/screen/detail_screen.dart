import 'package:flutter/src/widgets/framework.dart';
import 'package:mercury/feature/presentations/widget/app_bar/app_bar.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/factory_screen.dart';

class DetailScreen extends FactoryScreen {
  @override
  CustomAppBar createAppBar(BuildContext context) =>
      const CustomAppBar(labelTitle: "Chi tiết");
  @override
  String getTitle() => "Chi tiết";
}
