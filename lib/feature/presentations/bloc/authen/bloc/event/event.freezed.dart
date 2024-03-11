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
mixin _$AuthenEvent {
  LoginDto get dto => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginDto dto) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginDto dto)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginDto dto)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LOGIN value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LOGIN value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LOGIN value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenEventCopyWith<AuthenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenEventCopyWith<$Res> {
  factory $AuthenEventCopyWith(
          AuthenEvent value, $Res Function(AuthenEvent) then) =
      _$AuthenEventCopyWithImpl<$Res, AuthenEvent>;
  @useResult
  $Res call({LoginDto dto});

  $LoginDtoCopyWith<$Res> get dto;
}

/// @nodoc
class _$AuthenEventCopyWithImpl<$Res, $Val extends AuthenEvent>
    implements $AuthenEventCopyWith<$Res> {
  _$AuthenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_value.copyWith(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDtoCopyWith<$Res> get dto {
    return $LoginDtoCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LOGINImplCopyWith<$Res>
    implements $AuthenEventCopyWith<$Res> {
  factory _$$LOGINImplCopyWith(
          _$LOGINImpl value, $Res Function(_$LOGINImpl) then) =
      __$$LOGINImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginDto dto});

  @override
  $LoginDtoCopyWith<$Res> get dto;
}

/// @nodoc
class __$$LOGINImplCopyWithImpl<$Res>
    extends _$AuthenEventCopyWithImpl<$Res, _$LOGINImpl>
    implements _$$LOGINImplCopyWith<$Res> {
  __$$LOGINImplCopyWithImpl(
      _$LOGINImpl _value, $Res Function(_$LOGINImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$LOGINImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
    ));
  }
}

/// @nodoc

class _$LOGINImpl implements LOGIN {
  const _$LOGINImpl({required this.dto});

  @override
  final LoginDto dto;

  @override
  String toString() {
    return 'AuthenEvent.login(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LOGINImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LOGINImplCopyWith<_$LOGINImpl> get copyWith =>
      __$$LOGINImplCopyWithImpl<_$LOGINImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginDto dto) login,
  }) {
    return login(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginDto dto)? login,
  }) {
    return login?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginDto dto)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LOGIN value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LOGIN value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LOGIN value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LOGIN implements AuthenEvent {
  const factory LOGIN({required final LoginDto dto}) = _$LOGINImpl;

  @override
  LoginDto get dto;
  @override
  @JsonKey(ignore: true)
  _$$LOGINImplCopyWith<_$LOGINImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
