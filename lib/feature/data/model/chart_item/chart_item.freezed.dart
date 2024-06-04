// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChartItem _$ChartItemFromJson(Map<String, dynamic> json) {
  return _ChartItem.fromJson(json);
}

/// @nodoc
mixin _$ChartItem {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get numberSold => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartItemCopyWith<ChartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartItemCopyWith<$Res> {
  factory $ChartItemCopyWith(ChartItem value, $Res Function(ChartItem) then) =
      _$ChartItemCopyWithImpl<$Res, ChartItem>;
  @useResult
  $Res call({String? id, String? name, int? numberSold});
}

/// @nodoc
class _$ChartItemCopyWithImpl<$Res, $Val extends ChartItem>
    implements $ChartItemCopyWith<$Res> {
  _$ChartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? numberSold = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numberSold: freezed == numberSold
          ? _value.numberSold
          : numberSold // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartItemImplCopyWith<$Res>
    implements $ChartItemCopyWith<$Res> {
  factory _$$ChartItemImplCopyWith(
          _$ChartItemImpl value, $Res Function(_$ChartItemImpl) then) =
      __$$ChartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, int? numberSold});
}

/// @nodoc
class __$$ChartItemImplCopyWithImpl<$Res>
    extends _$ChartItemCopyWithImpl<$Res, _$ChartItemImpl>
    implements _$$ChartItemImplCopyWith<$Res> {
  __$$ChartItemImplCopyWithImpl(
      _$ChartItemImpl _value, $Res Function(_$ChartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? numberSold = freezed,
  }) {
    return _then(_$ChartItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numberSold: freezed == numberSold
          ? _value.numberSold
          : numberSold // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ChartItemImpl implements _ChartItem {
  const _$ChartItemImpl({this.id, this.name, this.numberSold});

  factory _$ChartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartItemImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? numberSold;

  @override
  String toString() {
    return 'ChartItem(id: $id, name: $name, numberSold: $numberSold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberSold, numberSold) ||
                other.numberSold == numberSold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, numberSold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartItemImplCopyWith<_$ChartItemImpl> get copyWith =>
      __$$ChartItemImplCopyWithImpl<_$ChartItemImpl>(this, _$identity);
}

abstract class _ChartItem implements ChartItem {
  const factory _ChartItem(
      {final String? id,
      final String? name,
      final int? numberSold}) = _$ChartItemImpl;

  factory _ChartItem.fromJson(Map<String, dynamic> json) =
      _$ChartItemImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get numberSold;
  @override
  @JsonKey(ignore: true)
  _$$ChartItemImplCopyWith<_$ChartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
