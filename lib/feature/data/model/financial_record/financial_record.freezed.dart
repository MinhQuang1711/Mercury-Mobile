// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinancialRecord _$FinancialRecordFromJson(Map<String, dynamic> json) {
  return _FinancialRecord.fromJson(json);
}

/// @nodoc
mixin _$FinancialRecord {
  double? get revenue => throw _privateConstructorUsedError;
  double? get profit => throw _privateConstructorUsedError;
  double? get importCost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinancialRecordCopyWith<FinancialRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialRecordCopyWith<$Res> {
  factory $FinancialRecordCopyWith(
          FinancialRecord value, $Res Function(FinancialRecord) then) =
      _$FinancialRecordCopyWithImpl<$Res, FinancialRecord>;
  @useResult
  $Res call({double? revenue, double? profit, double? importCost});
}

/// @nodoc
class _$FinancialRecordCopyWithImpl<$Res, $Val extends FinancialRecord>
    implements $FinancialRecordCopyWith<$Res> {
  _$FinancialRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = freezed,
    Object? profit = freezed,
    Object? importCost = freezed,
  }) {
    return _then(_value.copyWith(
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: freezed == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
      importCost: freezed == importCost
          ? _value.importCost
          : importCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialRecordImplCopyWith<$Res>
    implements $FinancialRecordCopyWith<$Res> {
  factory _$$FinancialRecordImplCopyWith(_$FinancialRecordImpl value,
          $Res Function(_$FinancialRecordImpl) then) =
      __$$FinancialRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? revenue, double? profit, double? importCost});
}

/// @nodoc
class __$$FinancialRecordImplCopyWithImpl<$Res>
    extends _$FinancialRecordCopyWithImpl<$Res, _$FinancialRecordImpl>
    implements _$$FinancialRecordImplCopyWith<$Res> {
  __$$FinancialRecordImplCopyWithImpl(
      _$FinancialRecordImpl _value, $Res Function(_$FinancialRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = freezed,
    Object? profit = freezed,
    Object? importCost = freezed,
  }) {
    return _then(_$FinancialRecordImpl(
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: freezed == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
      importCost: freezed == importCost
          ? _value.importCost
          : importCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$FinancialRecordImpl implements _FinancialRecord {
  const _$FinancialRecordImpl({this.revenue, this.profit, this.importCost});

  factory _$FinancialRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialRecordImplFromJson(json);

  @override
  final double? revenue;
  @override
  final double? profit;
  @override
  final double? importCost;

  @override
  String toString() {
    return 'FinancialRecord(revenue: $revenue, profit: $profit, importCost: $importCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialRecordImpl &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.profit, profit) || other.profit == profit) &&
            (identical(other.importCost, importCost) ||
                other.importCost == importCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, revenue, profit, importCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialRecordImplCopyWith<_$FinancialRecordImpl> get copyWith =>
      __$$FinancialRecordImplCopyWithImpl<_$FinancialRecordImpl>(
          this, _$identity);
}

abstract class _FinancialRecord implements FinancialRecord {
  const factory _FinancialRecord(
      {final double? revenue,
      final double? profit,
      final double? importCost}) = _$FinancialRecordImpl;

  factory _FinancialRecord.fromJson(Map<String, dynamic> json) =
      _$FinancialRecordImpl.fromJson;

  @override
  double? get revenue;
  @override
  double? get profit;
  @override
  double? get importCost;
  @override
  @JsonKey(ignore: true)
  _$$FinancialRecordImplCopyWith<_$FinancialRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
