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
mixin _$AuthenCubitState {
  bool get isHiden => throw _privateConstructorUsedError;
  LoginDto get dto => throw _privateConstructorUsedError;
  bool get isSavePassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenCubitStateCopyWith<AuthenCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenCubitStateCopyWith<$Res> {
  factory $AuthenCubitStateCopyWith(
          AuthenCubitState value, $Res Function(AuthenCubitState) then) =
      _$AuthenCubitStateCopyWithImpl<$Res, AuthenCubitState>;
  @useResult
  $Res call({bool isHiden, LoginDto dto, bool isSavePassword});

  $LoginDtoCopyWith<$Res> get dto;
}

/// @nodoc
class _$AuthenCubitStateCopyWithImpl<$Res, $Val extends AuthenCubitState>
    implements $AuthenCubitStateCopyWith<$Res> {
  _$AuthenCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHiden = null,
    Object? dto = null,
    Object? isSavePassword = null,
  }) {
    return _then(_value.copyWith(
      isHiden: null == isHiden
          ? _value.isHiden
          : isHiden // ignore: cast_nullable_to_non_nullable
              as bool,
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
      isSavePassword: null == isSavePassword
          ? _value.isSavePassword
          : isSavePassword // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$INITImplCopyWith<$Res>
    implements $AuthenCubitStateCopyWith<$Res> {
  factory _$$INITImplCopyWith(
          _$INITImpl value, $Res Function(_$INITImpl) then) =
      __$$INITImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isHiden, LoginDto dto, bool isSavePassword});

  @override
  $LoginDtoCopyWith<$Res> get dto;
}

/// @nodoc
class __$$INITImplCopyWithImpl<$Res>
    extends _$AuthenCubitStateCopyWithImpl<$Res, _$INITImpl>
    implements _$$INITImplCopyWith<$Res> {
  __$$INITImplCopyWithImpl(_$INITImpl _value, $Res Function(_$INITImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHiden = null,
    Object? dto = null,
    Object? isSavePassword = null,
  }) {
    return _then(_$INITImpl(
      isHiden: null == isHiden
          ? _value.isHiden
          : isHiden // ignore: cast_nullable_to_non_nullable
              as bool,
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
      isSavePassword: null == isSavePassword
          ? _value.isSavePassword
          : isSavePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$INITImpl implements INIT {
  const _$INITImpl(
      {required this.isHiden, required this.dto, required this.isSavePassword});

  @override
  final bool isHiden;
  @override
  final LoginDto dto;
  @override
  final bool isSavePassword;

  @override
  String toString() {
    return 'AuthenCubitState(isHiden: $isHiden, dto: $dto, isSavePassword: $isSavePassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$INITImpl &&
            (identical(other.isHiden, isHiden) || other.isHiden == isHiden) &&
            (identical(other.dto, dto) || other.dto == dto) &&
            (identical(other.isSavePassword, isSavePassword) ||
                other.isSavePassword == isSavePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isHiden, dto, isSavePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$INITImplCopyWith<_$INITImpl> get copyWith =>
      __$$INITImplCopyWithImpl<_$INITImpl>(this, _$identity);
}

abstract class INIT implements AuthenCubitState {
  const factory INIT(
      {required final bool isHiden,
      required final LoginDto dto,
      required final bool isSavePassword}) = _$INITImpl;

  @override
  bool get isHiden;
  @override
  LoginDto get dto;
  @override
  bool get isSavePassword;
  @override
  @JsonKey(ignore: true)
  _$$INITImplCopyWith<_$INITImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
