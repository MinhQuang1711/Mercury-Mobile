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
mixin _$UpdateBankState {
  List<Bank> get banks => throw _privateConstructorUsedError;
  BankInfo get bankInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateBankStateCopyWith<UpdateBankState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBankStateCopyWith<$Res> {
  factory $UpdateBankStateCopyWith(
          UpdateBankState value, $Res Function(UpdateBankState) then) =
      _$UpdateBankStateCopyWithImpl<$Res, UpdateBankState>;
  @useResult
  $Res call({List<Bank> banks, BankInfo bankInfo});

  $BankInfoCopyWith<$Res> get bankInfo;
}

/// @nodoc
class _$UpdateBankStateCopyWithImpl<$Res, $Val extends UpdateBankState>
    implements $UpdateBankStateCopyWith<$Res> {
  _$UpdateBankStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banks = null,
    Object? bankInfo = null,
  }) {
    return _then(_value.copyWith(
      banks: null == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<Bank>,
      bankInfo: null == bankInfo
          ? _value.bankInfo
          : bankInfo // ignore: cast_nullable_to_non_nullable
              as BankInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankInfoCopyWith<$Res> get bankInfo {
    return $BankInfoCopyWith<$Res>(_value.bankInfo, (value) {
      return _then(_value.copyWith(bankInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $UpdateBankStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Bank> banks, BankInfo bankInfo});

  @override
  $BankInfoCopyWith<$Res> get bankInfo;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$UpdateBankStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banks = null,
    Object? bankInfo = null,
  }) {
    return _then(_$StateImpl(
      banks: null == banks
          ? _value._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<Bank>,
      bankInfo: null == bankInfo
          ? _value.bankInfo
          : bankInfo // ignore: cast_nullable_to_non_nullable
              as BankInfo,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl({required final List<Bank> banks, required this.bankInfo})
      : _banks = banks;

  final List<Bank> _banks;
  @override
  List<Bank> get banks {
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

  @override
  final BankInfo bankInfo;

  @override
  String toString() {
    return 'UpdateBankState(banks: $banks, bankInfo: $bankInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            (identical(other.bankInfo, bankInfo) ||
                other.bankInfo == bankInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_banks), bankInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements UpdateBankState {
  const factory _State(
      {required final List<Bank> banks,
      required final BankInfo bankInfo}) = _$StateImpl;

  @override
  List<Bank> get banks;
  @override
  BankInfo get bankInfo;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
