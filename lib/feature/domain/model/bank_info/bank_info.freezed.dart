// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BankInfo {
  String? get bankBin => throw _privateConstructorUsedError;
  String? get bankCode => throw _privateConstructorUsedError;
  String? get reciverName => throw _privateConstructorUsedError;
  String? get bankShortName => throw _privateConstructorUsedError;
  String? get reciverAccountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankInfoCopyWith<BankInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankInfoCopyWith<$Res> {
  factory $BankInfoCopyWith(BankInfo value, $Res Function(BankInfo) then) =
      _$BankInfoCopyWithImpl<$Res, BankInfo>;
  @useResult
  $Res call(
      {String? bankBin,
      String? bankCode,
      String? reciverName,
      String? bankShortName,
      String? reciverAccountNumber});
}

/// @nodoc
class _$BankInfoCopyWithImpl<$Res, $Val extends BankInfo>
    implements $BankInfoCopyWith<$Res> {
  _$BankInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankBin = freezed,
    Object? bankCode = freezed,
    Object? reciverName = freezed,
    Object? bankShortName = freezed,
    Object? reciverAccountNumber = freezed,
  }) {
    return _then(_value.copyWith(
      bankBin: freezed == bankBin
          ? _value.bankBin
          : bankBin // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reciverName: freezed == reciverName
          ? _value.reciverName
          : reciverName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankShortName: freezed == bankShortName
          ? _value.bankShortName
          : bankShortName // ignore: cast_nullable_to_non_nullable
              as String?,
      reciverAccountNumber: freezed == reciverAccountNumber
          ? _value.reciverAccountNumber
          : reciverAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankImplCopyWith<$Res> implements $BankInfoCopyWith<$Res> {
  factory _$$BankImplCopyWith(
          _$BankImpl value, $Res Function(_$BankImpl) then) =
      __$$BankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bankBin,
      String? bankCode,
      String? reciverName,
      String? bankShortName,
      String? reciverAccountNumber});
}

/// @nodoc
class __$$BankImplCopyWithImpl<$Res>
    extends _$BankInfoCopyWithImpl<$Res, _$BankImpl>
    implements _$$BankImplCopyWith<$Res> {
  __$$BankImplCopyWithImpl(_$BankImpl _value, $Res Function(_$BankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankBin = freezed,
    Object? bankCode = freezed,
    Object? reciverName = freezed,
    Object? bankShortName = freezed,
    Object? reciverAccountNumber = freezed,
  }) {
    return _then(_$BankImpl(
      bankBin: freezed == bankBin
          ? _value.bankBin
          : bankBin // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reciverName: freezed == reciverName
          ? _value.reciverName
          : reciverName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankShortName: freezed == bankShortName
          ? _value.bankShortName
          : bankShortName // ignore: cast_nullable_to_non_nullable
              as String?,
      reciverAccountNumber: freezed == reciverAccountNumber
          ? _value.reciverAccountNumber
          : reciverAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$BankImpl implements _Bank {
  const _$BankImpl(
      {this.bankBin,
      this.bankCode,
      this.reciverName,
      this.bankShortName,
      this.reciverAccountNumber});

  @override
  final String? bankBin;
  @override
  final String? bankCode;
  @override
  final String? reciverName;
  @override
  final String? bankShortName;
  @override
  final String? reciverAccountNumber;

  @override
  String toString() {
    return 'BankInfo(bankBin: $bankBin, bankCode: $bankCode, reciverName: $reciverName, bankShortName: $bankShortName, reciverAccountNumber: $reciverAccountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankImpl &&
            (identical(other.bankBin, bankBin) || other.bankBin == bankBin) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.reciverName, reciverName) ||
                other.reciverName == reciverName) &&
            (identical(other.bankShortName, bankShortName) ||
                other.bankShortName == bankShortName) &&
            (identical(other.reciverAccountNumber, reciverAccountNumber) ||
                other.reciverAccountNumber == reciverAccountNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bankBin, bankCode, reciverName,
      bankShortName, reciverAccountNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      __$$BankImplCopyWithImpl<_$BankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankImplToJson(
      this,
    );
  }
}

abstract class _Bank implements BankInfo {
  const factory _Bank(
      {final String? bankBin,
      final String? bankCode,
      final String? reciverName,
      final String? bankShortName,
      final String? reciverAccountNumber}) = _$BankImpl;

  @override
  String? get bankBin;
  @override
  String? get bankCode;
  @override
  String? get reciverName;
  @override
  String? get bankShortName;
  @override
  String? get reciverAccountNumber;
  @override
  @JsonKey(ignore: true)
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
