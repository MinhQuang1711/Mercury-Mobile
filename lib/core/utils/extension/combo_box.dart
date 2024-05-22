import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';

extension ComboBoxEx on List<ComboBox> {
  ComboBox getById(String id) {
    return firstWhere((e) => e.id == id);
  }
}
