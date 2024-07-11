// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_request_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BankRequestUpdate {
  String? get password => throw _privateConstructorUsedError;
  BankInfo? get bankInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankRequestUpdateCopyWith<BankRequestUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankRequestUpdateCopyWith<$Res> {
  factory $BankRequestUpdateCopyWith(
          BankRequestUpdate value, $Res Function(BankRequestUpdate) then) =
      _$BankRequestUpdateCopyWithImpl<$Res, BankRequestUpdate>;
  @useResult
  $Res call({String? password, BankInfo? bankInfo});

  $BankInfoCopyWith<$Res>? get bankInfo;
}

/// @nodoc
class _$BankRequestUpdateCopyWithImpl<$Res, $Val extends BankRequestUpdate>
    implements $BankRequestUpdateCopyWith<$Res> {
  _$BankRequestUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? bankInfo = freezed,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      bankInfo: freezed == bankInfo
          ? _value.bankInfo
          : bankInfo // ignore: cast_nullable_to_non_nullable
              as BankInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankInfoCopyWith<$Res>? get bankInfo {
    if (_value.bankInfo == null) {
      return null;
    }

    return $BankInfoCopyWith<$Res>(_value.bankInfo!, (value) {
      return _then(_value.copyWith(bankInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BankRequestUpdateImplCopyWith<$Res>
    implements $BankRequestUpdateCopyWith<$Res> {
  factory _$$BankRequestUpdateImplCopyWith(_$BankRequestUpdateImpl value,
          $Res Function(_$BankRequestUpdateImpl) then) =
      __$$BankRequestUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? password, BankInfo? bankInfo});

  @override
  $BankInfoCopyWith<$Res>? get bankInfo;
}

/// @nodoc
class __$$BankRequestUpdateImplCopyWithImpl<$Res>
    extends _$BankRequestUpdateCopyWithImpl<$Res, _$BankRequestUpdateImpl>
    implements _$$BankRequestUpdateImplCopyWith<$Res> {
  __$$BankRequestUpdateImplCopyWithImpl(_$BankRequestUpdateImpl _value,
      $Res Function(_$BankRequestUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? bankInfo = freezed,
  }) {
    return _then(_$BankRequestUpdateImpl(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      bankInfo: freezed == bankInfo
          ? _value.bankInfo
          : bankInfo // ignore: cast_nullable_to_non_nullable
              as BankInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$BankRequestUpdateImpl implements _BankRequestUpdate {
  const _$BankRequestUpdateImpl({this.password, this.bankInfo});

  @override
  final String? password;
  @override
  final BankInfo? bankInfo;

  @override
  String toString() {
    return 'BankRequestUpdate(password: $password, bankInfo: $bankInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankRequestUpdateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.bankInfo, bankInfo) ||
                other.bankInfo == bankInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, password, bankInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankRequestUpdateImplCopyWith<_$BankRequestUpdateImpl> get copyWith =>
      __$$BankRequestUpdateImplCopyWithImpl<_$BankRequestUpdateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankRequestUpdateImplToJson(
      this,
    );
  }
}

abstract class _BankRequestUpdate implements BankRequestUpdate {
  const factory _BankRequestUpdate(
      {final String? password,
      final BankInfo? bankInfo}) = _$BankRequestUpdateImpl;

  @override
  String? get password;
  @override
  BankInfo? get bankInfo;
  @override
  @JsonKey(ignore: true)
  _$$BankRequestUpdateImplCopyWith<_$BankRequestUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
