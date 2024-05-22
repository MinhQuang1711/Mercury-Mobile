import 'package:freezed_annotation/freezed_annotation.dart';

part 'combo_box.freezed.dart';
part 'combo_box.g.dart';

@Freezed(fromJson: true, toJson: true)
class ComboBox with _$ComboBox {
  const factory ComboBox({
    String? name,
    String? id,
    double? value,
    double? price,
    int? quantity,
  }) = _ComboBox;

  factory ComboBox.fromJson(Map<String, dynamic> json) =>
      _$ComboBoxFromJson(json);
}
