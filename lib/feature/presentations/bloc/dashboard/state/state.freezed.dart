// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  List<ChartItem> get chartOfDay => throw _privateConstructorUsedError;
  List<ChartItem> get chartOfMonth => throw _privateConstructorUsedError;
  FinancialRecord get financialRecordOfDay =>
      throw _privateConstructorUsedError;
  FinancialRecord get financialRecordOfMonth =>
      throw _privateConstructorUsedError;
  List<Financial> get financial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {List<ChartItem> chartOfDay,
      List<ChartItem> chartOfMonth,
      FinancialRecord financialRecordOfDay,
      FinancialRecord financialRecordOfMonth,
      List<Financial> financial});

  $FinancialRecordCopyWith<$Res> get financialRecordOfDay;
  $FinancialRecordCopyWith<$Res> get financialRecordOfMonth;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartOfDay = null,
    Object? chartOfMonth = null,
    Object? financialRecordOfDay = null,
    Object? financialRecordOfMonth = null,
    Object? financial = null,
  }) {
    return _then(_value.copyWith(
      chartOfDay: null == chartOfDay
          ? _value.chartOfDay
          : chartOfDay // ignore: cast_nullable_to_non_nullable
              as List<ChartItem>,
      chartOfMonth: null == chartOfMonth
          ? _value.chartOfMonth
          : chartOfMonth // ignore: cast_nullable_to_non_nullable
              as List<ChartItem>,
      financialRecordOfDay: null == financialRecordOfDay
          ? _value.financialRecordOfDay
          : financialRecordOfDay // ignore: cast_nullable_to_non_nullable
              as FinancialRecord,
      financialRecordOfMonth: null == financialRecordOfMonth
          ? _value.financialRecordOfMonth
          : financialRecordOfMonth // ignore: cast_nullable_to_non_nullable
              as FinancialRecord,
      financial: null == financial
          ? _value.financial
          : financial // ignore: cast_nullable_to_non_nullable
              as List<Financial>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FinancialRecordCopyWith<$Res> get financialRecordOfDay {
    return $FinancialRecordCopyWith<$Res>(_value.financialRecordOfDay, (value) {
      return _then(_value.copyWith(financialRecordOfDay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FinancialRecordCopyWith<$Res> get financialRecordOfMonth {
    return $FinancialRecordCopyWith<$Res>(_value.financialRecordOfMonth,
        (value) {
      return _then(_value.copyWith(financialRecordOfMonth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChartItem> chartOfDay,
      List<ChartItem> chartOfMonth,
      FinancialRecord financialRecordOfDay,
      FinancialRecord financialRecordOfMonth,
      List<Financial> financial});

  @override
  $FinancialRecordCopyWith<$Res> get financialRecordOfDay;
  @override
  $FinancialRecordCopyWith<$Res> get financialRecordOfMonth;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartOfDay = null,
    Object? chartOfMonth = null,
    Object? financialRecordOfDay = null,
    Object? financialRecordOfMonth = null,
    Object? financial = null,
  }) {
    return _then(_$StateImpl(
      chartOfDay: null == chartOfDay
          ? _value._chartOfDay
          : chartOfDay // ignore: cast_nullable_to_non_nullable
              as List<ChartItem>,
      chartOfMonth: null == chartOfMonth
          ? _value._chartOfMonth
          : chartOfMonth // ignore: cast_nullable_to_non_nullable
              as List<ChartItem>,
      financialRecordOfDay: null == financialRecordOfDay
          ? _value.financialRecordOfDay
          : financialRecordOfDay // ignore: cast_nullable_to_non_nullable
              as FinancialRecord,
      financialRecordOfMonth: null == financialRecordOfMonth
          ? _value.financialRecordOfMonth
          : financialRecordOfMonth // ignore: cast_nullable_to_non_nullable
              as FinancialRecord,
      financial: null == financial
          ? _value._financial
          : financial // ignore: cast_nullable_to_non_nullable
              as List<Financial>,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {required final List<ChartItem> chartOfDay,
      required final List<ChartItem> chartOfMonth,
      required this.financialRecordOfDay,
      required this.financialRecordOfMonth,
      required final List<Financial> financial})
      : _chartOfDay = chartOfDay,
        _chartOfMonth = chartOfMonth,
        _financial = financial;

  final List<ChartItem> _chartOfDay;
  @override
  List<ChartItem> get chartOfDay {
    if (_chartOfDay is EqualUnmodifiableListView) return _chartOfDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartOfDay);
  }

  final List<ChartItem> _chartOfMonth;
  @override
  List<ChartItem> get chartOfMonth {
    if (_chartOfMonth is EqualUnmodifiableListView) return _chartOfMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartOfMonth);
  }

  @override
  final FinancialRecord financialRecordOfDay;
  @override
  final FinancialRecord financialRecordOfMonth;
  final List<Financial> _financial;
  @override
  List<Financial> get financial {
    if (_financial is EqualUnmodifiableListView) return _financial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_financial);
  }

  @override
  String toString() {
    return 'DashboardState(chartOfDay: $chartOfDay, chartOfMonth: $chartOfMonth, financialRecordOfDay: $financialRecordOfDay, financialRecordOfMonth: $financialRecordOfMonth, financial: $financial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality()
                .equals(other._chartOfDay, _chartOfDay) &&
            const DeepCollectionEquality()
                .equals(other._chartOfMonth, _chartOfMonth) &&
            (identical(other.financialRecordOfDay, financialRecordOfDay) ||
                other.financialRecordOfDay == financialRecordOfDay) &&
            (identical(other.financialRecordOfMonth, financialRecordOfMonth) ||
                other.financialRecordOfMonth == financialRecordOfMonth) &&
            const DeepCollectionEquality()
                .equals(other._financial, _financial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chartOfDay),
      const DeepCollectionEquality().hash(_chartOfMonth),
      financialRecordOfDay,
      financialRecordOfMonth,
      const DeepCollectionEquality().hash(_financial));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements DashboardState {
  const factory _State(
      {required final List<ChartItem> chartOfDay,
      required final List<ChartItem> chartOfMonth,
      required final FinancialRecord financialRecordOfDay,
      required final FinancialRecord financialRecordOfMonth,
      required final List<Financial> financial}) = _$StateImpl;

  @override
  List<ChartItem> get chartOfDay;
  @override
  List<ChartItem> get chartOfMonth;
  @override
  FinancialRecord get financialRecordOfDay;
  @override
  FinancialRecord get financialRecordOfMonth;
  @override
  List<Financial> get financial;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
