import 'package:flutter/src/widgets/framework.dart';
import 'package:mercury/feature/presentations/widget/app_bar/app_bar.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/factory_screen.dart';

import '../message/factory_message.dart';

class CreateScreen extends FactoryScreen implements FactoryMessage {
  @override
  CustomAppBar createAppBar(BuildContext context) =>
      const CustomAppBar(labelTitle: "Thêm mới");
  @override
  String getMessage() => "Thêm mới thành công";
  @override
  String getTitle() => "Thêm mới";
}
