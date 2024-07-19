// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _TOKEN.fromJson(json);
}

/// @nodoc
mixin _$Token {
  @JsonKey(name: "entity")
  User? get user => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call(
      {@JsonKey(name: "entity") User? user,
      String? accessToken,
      String? refreshToken});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TOKENImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TOKENImplCopyWith(
          _$TOKENImpl value, $Res Function(_$TOKENImpl) then) =
      __$$TOKENImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "entity") User? user,
      String? accessToken,
      String? refreshToken});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TOKENImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TOKENImpl>
    implements _$$TOKENImplCopyWith<$Res> {
  __$$TOKENImplCopyWithImpl(
      _$TOKENImpl _value, $Res Function(_$TOKENImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$TOKENImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TOKENImpl implements _TOKEN {
  const _$TOKENImpl(
      {@JsonKey(name: "entity") this.user,
      this.accessToken,
      this.refreshToken});

  factory _$TOKENImpl.fromJson(Map<String, dynamic> json) =>
      _$$TOKENImplFromJson(json);

  @override
  @JsonKey(name: "entity")
  final User? user;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'Token(user: $user, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TOKENImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TOKENImplCopyWith<_$TOKENImpl> get copyWith =>
      __$$TOKENImplCopyWithImpl<_$TOKENImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TOKENImplToJson(
      this,
    );
  }
}

abstract class _TOKEN implements Token {
  const factory _TOKEN(
      {@JsonKey(name: "entity") final User? user,
      final String? accessToken,
      final String? refreshToken}) = _$TOKENImpl;

  factory _TOKEN.fromJson(Map<String, dynamic> json) = _$TOKENImpl.fromJson;

  @override
  @JsonKey(name: "entity")
  User? get user;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$TOKENImplCopyWith<_$TOKENImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
