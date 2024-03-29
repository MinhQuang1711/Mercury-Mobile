// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_by_name.freezed.dart';
part 'search_by_name.g.dart';

@Freezed(fromJson: false, toJson: true)
class SearchByName with _$SearchByName {
  const factory SearchByName({
    String? name,
    @Default(20) int pageSize,
    @Default(1) int pageNumber,
  }) = _SearchByName;
}
