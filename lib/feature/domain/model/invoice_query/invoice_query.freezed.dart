// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceQuery {
  String? get id => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateTimeToJson)
  DateTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateTimeToJson)
  DateTime? get startTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceQueryCopyWith<InvoiceQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceQueryCopyWith<$Res> {
  factory $InvoiceQueryCopyWith(
          InvoiceQuery value, $Res Function(InvoiceQuery) then) =
      _$InvoiceQueryCopyWithImpl<$Res, InvoiceQuery>;
  @useResult
  $Res call(
      {String? id,
      int? pageSize,
      int? pageNumber,
      @JsonKey(toJson: dateTimeToJson) DateTime? endTime,
      @JsonKey(toJson: dateTimeToJson) DateTime? startTime});
}

/// @nodoc
class _$InvoiceQueryCopyWithImpl<$Res, $Val extends InvoiceQuery>
    implements $InvoiceQueryCopyWith<$Res> {
  _$InvoiceQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceQueryImplCopyWith<$Res>
    implements $InvoiceQueryCopyWith<$Res> {
  factory _$$InvoiceQueryImplCopyWith(
          _$InvoiceQueryImpl value, $Res Function(_$InvoiceQueryImpl) then) =
      __$$InvoiceQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? pageSize,
      int? pageNumber,
      @JsonKey(toJson: dateTimeToJson) DateTime? endTime,
      @JsonKey(toJson: dateTimeToJson) DateTime? startTime});
}

/// @nodoc
class __$$InvoiceQueryImplCopyWithImpl<$Res>
    extends _$InvoiceQueryCopyWithImpl<$Res, _$InvoiceQueryImpl>
    implements _$$InvoiceQueryImplCopyWith<$Res> {
  __$$InvoiceQueryImplCopyWithImpl(
      _$InvoiceQueryImpl _value, $Res Function(_$InvoiceQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
  }) {
    return _then(_$InvoiceQueryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InvoiceQueryImpl implements _InvoiceQuery {
  const _$InvoiceQueryImpl(
      {this.id,
      this.pageSize,
      this.pageNumber,
      @JsonKey(toJson: dateTimeToJson) this.endTime,
      @JsonKey(toJson: dateTimeToJson) this.startTime});

  @override
  final String? id;
  @override
  final int? pageSize;
  @override
  final int? pageNumber;
  @override
  @JsonKey(toJson: dateTimeToJson)
  final DateTime? endTime;
  @override
  @JsonKey(toJson: dateTimeToJson)
  final DateTime? startTime;

  @override
  String toString() {
    return 'InvoiceQuery(id: $id, pageSize: $pageSize, pageNumber: $pageNumber, endTime: $endTime, startTime: $startTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceQueryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pageSize, pageNumber, endTime, startTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceQueryImplCopyWith<_$InvoiceQueryImpl> get copyWith =>
      __$$InvoiceQueryImplCopyWithImpl<_$InvoiceQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceQueryImplToJson(
      this,
    );
  }
}

abstract class _InvoiceQuery implements InvoiceQuery {
  const factory _InvoiceQuery(
          {final String? id,
          final int? pageSize,
          final int? pageNumber,
          @JsonKey(toJson: dateTimeToJson) final DateTime? endTime,
          @JsonKey(toJson: dateTimeToJson) final DateTime? startTime}) =
      _$InvoiceQueryImpl;

  @override
  String? get id;
  @override
  int? get pageSize;
  @override
  int? get pageNumber;
  @override
  @JsonKey(toJson: dateTimeToJson)
  DateTime? get endTime;
  @override
  @JsonKey(toJson: dateTimeToJson)
  DateTime? get startTime;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceQueryImplCopyWith<_$InvoiceQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
