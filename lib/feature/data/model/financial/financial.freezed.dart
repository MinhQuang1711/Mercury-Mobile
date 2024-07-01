// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Financial _$FinancialFromJson(Map<String, dynamic> json) {
  return _Financial.fromJson(json);
}

/// @nodoc
mixin _$Financial {
  String? get date => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;
  double? get profit => throw _privateConstructorUsedError;
  double? get importPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinancialCopyWith<Financial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialCopyWith<$Res> {
  factory $FinancialCopyWith(Financial value, $Res Function(Financial) then) =
      _$FinancialCopyWithImpl<$Res, Financial>;
  @useResult
  $Res call(
      {String? date, double? revenue, double? profit, double? importPrice});
}

/// @nodoc
class _$FinancialCopyWithImpl<$Res, $Val extends Financial>
    implements $FinancialCopyWith<$Res> {
  _$FinancialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? revenue = freezed,
    Object? profit = freezed,
    Object? importPrice = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: freezed == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
      importPrice: freezed == importPrice
          ? _value.importPrice
          : importPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialImplCopyWith<$Res>
    implements $FinancialCopyWith<$Res> {
  factory _$$FinancialImplCopyWith(
          _$FinancialImpl value, $Res Function(_$FinancialImpl) then) =
      __$$FinancialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date, double? revenue, double? profit, double? importPrice});
}

/// @nodoc
class __$$FinancialImplCopyWithImpl<$Res>
    extends _$FinancialCopyWithImpl<$Res, _$FinancialImpl>
    implements _$$FinancialImplCopyWith<$Res> {
  __$$FinancialImplCopyWithImpl(
      _$FinancialImpl _value, $Res Function(_$FinancialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? revenue = freezed,
    Object? profit = freezed,
    Object? importPrice = freezed,
  }) {
    return _then(_$FinancialImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: freezed == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
      importPrice: freezed == importPrice
          ? _value.importPrice
          : importPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$FinancialImpl implements _Financial {
  const _$FinancialImpl(
      {this.date, this.revenue, this.profit, this.importPrice});

  factory _$FinancialImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialImplFromJson(json);

  @override
  final String? date;
  @override
  final double? revenue;
  @override
  final double? profit;
  @override
  final double? importPrice;

  @override
  String toString() {
    return 'Financial(date: $date, revenue: $revenue, profit: $profit, importPrice: $importPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.profit, profit) || other.profit == profit) &&
            (identical(other.importPrice, importPrice) ||
                other.importPrice == importPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, revenue, profit, importPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialImplCopyWith<_$FinancialImpl> get copyWith =>
      __$$FinancialImplCopyWithImpl<_$FinancialImpl>(this, _$identity);
}

abstract class _Financial implements Financial {
  const factory _Financial(
      {final String? date,
      final double? revenue,
      final double? profit,
      final double? importPrice}) = _$FinancialImpl;

  factory _Financial.fromJson(Map<String, dynamic> json) =
      _$FinancialImpl.fromJson;

  @override
  String? get date;
  @override
  double? get revenue;
  @override
  double? get profit;
  @override
  double? get importPrice;
  @override
  @JsonKey(ignore: true)
  _$$FinancialImplCopyWith<_$FinancialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
