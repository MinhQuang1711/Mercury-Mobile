// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_by_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportByDay _$ReportByDayFromJson(Map<String, dynamic> json) {
  return _ReportByDay.fromJson(json);
}

/// @nodoc
mixin _$ReportByDay {
  int? get quantity => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get shippingFee => throw _privateConstructorUsedError;
  double? get profit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportByDayCopyWith<ReportByDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportByDayCopyWith<$Res> {
  factory $ReportByDayCopyWith(
          ReportByDay value, $Res Function(ReportByDay) then) =
      _$ReportByDayCopyWithImpl<$Res, ReportByDay>;
  @useResult
  $Res call(
      {int? quantity,
      DateTime? date,
      double? revenue,
      double? discount,
      double? shippingFee,
      double? profit});
}

/// @nodoc
class _$ReportByDayCopyWithImpl<$Res, $Val extends ReportByDay>
    implements $ReportByDayCopyWith<$Res> {
  _$ReportByDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? date = freezed,
    Object? revenue = freezed,
    Object? discount = freezed,
    Object? shippingFee = freezed,
    Object? profit = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFee: freezed == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: freezed == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportByDayImplCopyWith<$Res>
    implements $ReportByDayCopyWith<$Res> {
  factory _$$ReportByDayImplCopyWith(
          _$ReportByDayImpl value, $Res Function(_$ReportByDayImpl) then) =
      __$$ReportByDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? quantity,
      DateTime? date,
      double? revenue,
      double? discount,
      double? shippingFee,
      double? profit});
}

/// @nodoc
class __$$ReportByDayImplCopyWithImpl<$Res>
    extends _$ReportByDayCopyWithImpl<$Res, _$ReportByDayImpl>
    implements _$$ReportByDayImplCopyWith<$Res> {
  __$$ReportByDayImplCopyWithImpl(
      _$ReportByDayImpl _value, $Res Function(_$ReportByDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? date = freezed,
    Object? revenue = freezed,
    Object? discount = freezed,
    Object? shippingFee = freezed,
    Object? profit = freezed,
  }) {
    return _then(_$ReportByDayImpl(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFee: freezed == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: freezed == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ReportByDayImpl implements _ReportByDay {
  const _$ReportByDayImpl(
      {this.quantity,
      this.date,
      this.revenue,
      this.discount,
      this.shippingFee,
      this.profit});

  factory _$ReportByDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportByDayImplFromJson(json);

  @override
  final int? quantity;
  @override
  final DateTime? date;
  @override
  final double? revenue;
  @override
  final double? discount;
  @override
  final double? shippingFee;
  @override
  final double? profit;

  @override
  String toString() {
    return 'ReportByDay(quantity: $quantity, date: $date, revenue: $revenue, discount: $discount, shippingFee: $shippingFee, profit: $profit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportByDayImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.shippingFee, shippingFee) ||
                other.shippingFee == shippingFee) &&
            (identical(other.profit, profit) || other.profit == profit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, quantity, date, revenue, discount, shippingFee, profit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportByDayImplCopyWith<_$ReportByDayImpl> get copyWith =>
      __$$ReportByDayImplCopyWithImpl<_$ReportByDayImpl>(this, _$identity);
}

abstract class _ReportByDay implements ReportByDay {
  const factory _ReportByDay(
      {final int? quantity,
      final DateTime? date,
      final double? revenue,
      final double? discount,
      final double? shippingFee,
      final double? profit}) = _$ReportByDayImpl;

  factory _ReportByDay.fromJson(Map<String, dynamic> json) =
      _$ReportByDayImpl.fromJson;

  @override
  int? get quantity;
  @override
  DateTime? get date;
  @override
  double? get revenue;
  @override
  double? get discount;
  @override
  double? get shippingFee;
  @override
  double? get profit;
  @override
  @JsonKey(ignore: true)
  _$$ReportByDayImplCopyWith<_$ReportByDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
