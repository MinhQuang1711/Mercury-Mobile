import 'package:flutter/src/widgets/framework.dart';
import 'package:mercury/feature/presentations/widget/app_bar/app_bar.dart';
import 'package:mercury/feature/presentations/widget/app_bar/factory_app_bar/factory_app_bar.dart';

class CreateAppBar extends FactoryAppBar {
  @override
  Widget create(BuildContext context) =>
      const CustomAppBar(labelTitle: "Chi tiết");
}
