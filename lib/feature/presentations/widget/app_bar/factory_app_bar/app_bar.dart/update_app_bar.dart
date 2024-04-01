import 'package:flutter/src/widgets/framework.dart';

import '../../app_bar.dart';
import '../factory_app_bar.dart';

class UpdateAppBar extends FactoryAppBar {
  @override
  CustomAppBar create(BuildContext context) =>
      const CustomAppBar(labelTitle: "Cập nhật");
  @override
  String getTitle() => "Cập nhật";
}
