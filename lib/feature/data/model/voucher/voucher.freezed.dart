// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Voucher _$VoucherFromJson(Map<String, dynamic> json) {
  return _Voucher.fromJson(json);
}

/// @nodoc
mixin _$Voucher {
  String? get name => throw _privateConstructorUsedError;
  int? get discountType => throw _privateConstructorUsedError;
  double? get discountValue => throw _privateConstructorUsedError;
  double? get percentValue => throw _privateConstructorUsedError;
  DateTime? get createDate => throw _privateConstructorUsedError;
  String? get createdByName => throw _privateConstructorUsedError;
  String? get ownerName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherCopyWith<Voucher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherCopyWith<$Res> {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) then) =
      _$VoucherCopyWithImpl<$Res, Voucher>;
  @useResult
  $Res call(
      {String? name,
      int? discountType,
      double? discountValue,
      double? percentValue,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id});
}

/// @nodoc
class _$VoucherCopyWithImpl<$Res, $Val extends Voucher>
    implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? percentValue = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as double?,
      percentValue: freezed == percentValue
          ? _value.percentValue
          : percentValue // ignore: cast_nullable_to_non_nullable
              as double?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherImplCopyWith<$Res> implements $VoucherCopyWith<$Res> {
  factory _$$VoucherImplCopyWith(
          _$VoucherImpl value, $Res Function(_$VoucherImpl) then) =
      __$$VoucherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? discountType,
      double? discountValue,
      double? percentValue,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id});
}

/// @nodoc
class __$$VoucherImplCopyWithImpl<$Res>
    extends _$VoucherCopyWithImpl<$Res, _$VoucherImpl>
    implements _$$VoucherImplCopyWith<$Res> {
  __$$VoucherImplCopyWithImpl(
      _$VoucherImpl _value, $Res Function(_$VoucherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? percentValue = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VoucherImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as double?,
      percentValue: freezed == percentValue
          ? _value.percentValue
          : percentValue // ignore: cast_nullable_to_non_nullable
              as double?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoucherImpl implements _Voucher {
  const _$VoucherImpl(
      {this.name,
      this.discountType,
      this.discountValue,
      this.percentValue,
      this.createDate,
      this.createdByName,
      this.ownerName,
      this.id});

  factory _$VoucherImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoucherImplFromJson(json);

  @override
  final String? name;
  @override
  final int? discountType;
  @override
  final double? discountValue;
  @override
  final double? percentValue;
  @override
  final DateTime? createDate;
  @override
  final String? createdByName;
  @override
  final String? ownerName;
  @override
  final String? id;

  @override
  String toString() {
    return 'Voucher(name: $name, discountType: $discountType, discountValue: $discountValue, percentValue: $percentValue, createDate: $createDate, createdByName: $createdByName, ownerName: $ownerName, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.percentValue, percentValue) ||
                other.percentValue == percentValue) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, discountType,
      discountValue, percentValue, createDate, createdByName, ownerName, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherImplCopyWith<_$VoucherImpl> get copyWith =>
      __$$VoucherImplCopyWithImpl<_$VoucherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoucherImplToJson(
      this,
    );
  }
}

abstract class _Voucher implements Voucher {
  const factory _Voucher(
      {final String? name,
      final int? discountType,
      final double? discountValue,
      final double? percentValue,
      final DateTime? createDate,
      final String? createdByName,
      final String? ownerName,
      final String? id}) = _$VoucherImpl;

  factory _Voucher.fromJson(Map<String, dynamic> json) = _$VoucherImpl.fromJson;

  @override
  String? get name;
  @override
  int? get discountType;
  @override
  double? get discountValue;
  @override
  double? get percentValue;
  @override
  DateTime? get createDate;
  @override
  String? get createdByName;
  @override
  String? get ownerName;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$VoucherImplCopyWith<_$VoucherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
