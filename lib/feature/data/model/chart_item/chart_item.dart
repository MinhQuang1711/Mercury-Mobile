import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_item.freezed.dart';
part 'chart_item.g.dart';

@Freezed(fromJson: true, toJson: false)
class ChartItem with _$ChartItem {
  const factory ChartItem({
    String? id,
    String? name,
    int? numberSold,
  }) = _ChartItem;

  factory ChartItem.fromJson(Map<String, dynamic> json) =>
      _$ChartItemFromJson(json);
}
