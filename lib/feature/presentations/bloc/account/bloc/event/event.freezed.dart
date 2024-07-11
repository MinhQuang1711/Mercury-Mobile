// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEvent {
  BankRequestUpdate get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BankRequestUpdate request) updateBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BankRequestUpdate request)? updateBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BankRequestUpdate request)? updateBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateBank value) updateBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateBank value)? updateBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateBank value)? updateBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountEventCopyWith<AccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
  @useResult
  $Res call({BankRequestUpdate request});

  $BankRequestUpdateCopyWith<$Res> get request;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as BankRequestUpdate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankRequestUpdateCopyWith<$Res> get request {
    return $BankRequestUpdateCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$updateBankImplCopyWith<$Res>
    implements $AccountEventCopyWith<$Res> {
  factory _$$updateBankImplCopyWith(
          _$updateBankImpl value, $Res Function(_$updateBankImpl) then) =
      __$$updateBankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BankRequestUpdate request});

  @override
  $BankRequestUpdateCopyWith<$Res> get request;
}

/// @nodoc
class __$$updateBankImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$updateBankImpl>
    implements _$$updateBankImplCopyWith<$Res> {
  __$$updateBankImplCopyWithImpl(
      _$updateBankImpl _value, $Res Function(_$updateBankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$updateBankImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as BankRequestUpdate,
    ));
  }
}

/// @nodoc

class _$updateBankImpl implements _updateBank {
  const _$updateBankImpl(this.request);

  @override
  final BankRequestUpdate request;

  @override
  String toString() {
    return 'AccountEvent.updateBank(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateBankImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateBankImplCopyWith<_$updateBankImpl> get copyWith =>
      __$$updateBankImplCopyWithImpl<_$updateBankImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BankRequestUpdate request) updateBank,
  }) {
    return updateBank(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BankRequestUpdate request)? updateBank,
  }) {
    return updateBank?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BankRequestUpdate request)? updateBank,
    required TResult orElse(),
  }) {
    if (updateBank != null) {
      return updateBank(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateBank value) updateBank,
  }) {
    return updateBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateBank value)? updateBank,
  }) {
    return updateBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateBank value)? updateBank,
    required TResult orElse(),
  }) {
    if (updateBank != null) {
      return updateBank(this);
    }
    return orElse();
  }
}

abstract class _updateBank implements AccountEvent {
  const factory _updateBank(final BankRequestUpdate request) = _$updateBankImpl;

  @override
  BankRequestUpdate get request;
  @override
  @JsonKey(ignore: true)
  _$$updateBankImplCopyWith<_$updateBankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
