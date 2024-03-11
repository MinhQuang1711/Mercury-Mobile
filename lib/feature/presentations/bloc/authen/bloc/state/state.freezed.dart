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
mixin _$AuthenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(User user) gotUser,
    required TResult Function(Token token) loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(User user)? gotUser,
    TResult? Function(Token token)? loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(User user)? gotUser,
    TResult Function(Token token)? loginSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(LOADING value) loading,
    required TResult Function(FAILD value) failure,
    required TResult Function(GOT_USER value) gotUser,
    required TResult Function(LOGIN_SUCCESS value) loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(LOADING value)? loading,
    TResult? Function(FAILD value)? failure,
    TResult? Function(GOT_USER value)? gotUser,
    TResult? Function(LOGIN_SUCCESS value)? loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(LOADING value)? loading,
    TResult Function(FAILD value)? failure,
    TResult Function(GOT_USER value)? gotUser,
    TResult Function(LOGIN_SUCCESS value)? loginSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenStateCopyWith<$Res> {
  factory $AuthenStateCopyWith(
          AuthenState value, $Res Function(AuthenState) then) =
      _$AuthenStateCopyWithImpl<$Res, AuthenState>;
}

/// @nodoc
class _$AuthenStateCopyWithImpl<$Res, $Val extends AuthenState>
    implements $AuthenStateCopyWith<$Res> {
  _$AuthenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$INITImplCopyWith<$Res> {
  factory _$$INITImplCopyWith(
          _$INITImpl value, $Res Function(_$INITImpl) then) =
      __$$INITImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$INITImplCopyWithImpl<$Res>
    extends _$AuthenStateCopyWithImpl<$Res, _$INITImpl>
    implements _$$INITImplCopyWith<$Res> {
  __$$INITImplCopyWithImpl(_$INITImpl _value, $Res Function(_$INITImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$INITImpl implements INIT {
  const _$INITImpl();

  @override
  String toString() {
    return 'AuthenState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$INITImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(User user) gotUser,
    required TResult Function(Token token) loginSuccess,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(User user)? gotUser,
    TResult? Function(Token token)? loginSuccess,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(User user)? gotUser,
    TResult Function(Token token)? loginSuccess,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(LOADING value) loading,
    required TResult Function(FAILD value) failure,
    required TResult Function(GOT_USER value) gotUser,
    required TResult Function(LOGIN_SUCCESS value) loginSuccess,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(LOADING value)? loading,
    TResult? Function(FAILD value)? failure,
    TResult? Function(GOT_USER value)? gotUser,
    TResult? Function(LOGIN_SUCCESS value)? loginSuccess,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(LOADING value)? loading,
    TResult Function(FAILD value)? failure,
    TResult Function(GOT_USER value)? gotUser,
    TResult Function(LOGIN_SUCCESS value)? loginSuccess,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class INIT implements AuthenState {
  const factory INIT() = _$INITImpl;
}

/// @nodoc
abstract class _$$LOADINGImplCopyWith<$Res> {
  factory _$$LOADINGImplCopyWith(
          _$LOADINGImpl value, $Res Function(_$LOADINGImpl) then) =
      __$$LOADINGImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LOADINGImplCopyWithImpl<$Res>
    extends _$AuthenStateCopyWithImpl<$Res, _$LOADINGImpl>
    implements _$$LOADINGImplCopyWith<$Res> {
  __$$LOADINGImplCopyWithImpl(
      _$LOADINGImpl _value, $Res Function(_$LOADINGImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LOADINGImpl implements LOADING {
  const _$LOADINGImpl();

  @override
  String toString() {
    return 'AuthenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LOADINGImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(User user) gotUser,
    required TResult Function(Token token) loginSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(User user)? gotUser,
    TResult? Function(Token token)? loginSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(User user)? gotUser,
    TResult Function(Token token)? loginSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(LOADING value) loading,
    required TResult Function(FAILD value) failure,
    required TResult Function(GOT_USER value) gotUser,
    required TResult Function(LOGIN_SUCCESS value) loginSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(LOADING value)? loading,
    TResult? Function(FAILD value)? failure,
    TResult? Function(GOT_USER value)? gotUser,
    TResult? Function(LOGIN_SUCCESS value)? loginSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(LOADING value)? loading,
    TResult Function(FAILD value)? failure,
    TResult Function(GOT_USER value)? gotUser,
    TResult Function(LOGIN_SUCCESS value)? loginSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LOADING implements AuthenState {
  const factory LOADING() = _$LOADINGImpl;
}

/// @nodoc
abstract class _$$FAILDImplCopyWith<$Res> {
  factory _$$FAILDImplCopyWith(
          _$FAILDImpl value, $Res Function(_$FAILDImpl) then) =
      __$$FAILDImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$FAILDImplCopyWithImpl<$Res>
    extends _$AuthenStateCopyWithImpl<$Res, _$FAILDImpl>
    implements _$$FAILDImplCopyWith<$Res> {
  __$$FAILDImplCopyWithImpl(
      _$FAILDImpl _value, $Res Function(_$FAILDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$FAILDImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FAILDImpl implements FAILD {
  const _$FAILDImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthenState.failure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAILDImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FAILDImplCopyWith<_$FAILDImpl> get copyWith =>
      __$$FAILDImplCopyWithImpl<_$FAILDImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(User user) gotUser,
    required TResult Function(Token token) loginSuccess,
  }) {
    return failure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(User user)? gotUser,
    TResult? Function(Token token)? loginSuccess,
  }) {
    return failure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(User user)? gotUser,
    TResult Function(Token token)? loginSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(LOADING value) loading,
    required TResult Function(FAILD value) failure,
    required TResult Function(GOT_USER value) gotUser,
    required TResult Function(LOGIN_SUCCESS value) loginSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(LOADING value)? loading,
    TResult? Function(FAILD value)? failure,
    TResult? Function(GOT_USER value)? gotUser,
    TResult? Function(LOGIN_SUCCESS value)? loginSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(LOADING value)? loading,
    TResult Function(FAILD value)? failure,
    TResult Function(GOT_USER value)? gotUser,
    TResult Function(LOGIN_SUCCESS value)? loginSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FAILD implements AuthenState {
  const factory FAILD(final String msg) = _$FAILDImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$FAILDImplCopyWith<_$FAILDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GOT_USERImplCopyWith<$Res> {
  factory _$$GOT_USERImplCopyWith(
          _$GOT_USERImpl value, $Res Function(_$GOT_USERImpl) then) =
      __$$GOT_USERImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$GOT_USERImplCopyWithImpl<$Res>
    extends _$AuthenStateCopyWithImpl<$Res, _$GOT_USERImpl>
    implements _$$GOT_USERImplCopyWith<$Res> {
  __$$GOT_USERImplCopyWithImpl(
      _$GOT_USERImpl _value, $Res Function(_$GOT_USERImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GOT_USERImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$GOT_USERImpl implements GOT_USER {
  const _$GOT_USERImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenState.gotUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GOT_USERImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GOT_USERImplCopyWith<_$GOT_USERImpl> get copyWith =>
      __$$GOT_USERImplCopyWithImpl<_$GOT_USERImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(User user) gotUser,
    required TResult Function(Token token) loginSuccess,
  }) {
    return gotUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(User user)? gotUser,
    TResult? Function(Token token)? loginSuccess,
  }) {
    return gotUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(User user)? gotUser,
    TResult Function(Token token)? loginSuccess,
    required TResult orElse(),
  }) {
    if (gotUser != null) {
      return gotUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(LOADING value) loading,
    required TResult Function(FAILD value) failure,
    required TResult Function(GOT_USER value) gotUser,
    required TResult Function(LOGIN_SUCCESS value) loginSuccess,
  }) {
    return gotUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(LOADING value)? loading,
    TResult? Function(FAILD value)? failure,
    TResult? Function(GOT_USER value)? gotUser,
    TResult? Function(LOGIN_SUCCESS value)? loginSuccess,
  }) {
    return gotUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(LOADING value)? loading,
    TResult Function(FAILD value)? failure,
    TResult Function(GOT_USER value)? gotUser,
    TResult Function(LOGIN_SUCCESS value)? loginSuccess,
    required TResult orElse(),
  }) {
    if (gotUser != null) {
      return gotUser(this);
    }
    return orElse();
  }
}

abstract class GOT_USER implements AuthenState {
  const factory GOT_USER(final User user) = _$GOT_USERImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$GOT_USERImplCopyWith<_$GOT_USERImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LOGIN_SUCCESSImplCopyWith<$Res> {
  factory _$$LOGIN_SUCCESSImplCopyWith(
          _$LOGIN_SUCCESSImpl value, $Res Function(_$LOGIN_SUCCESSImpl) then) =
      __$$LOGIN_SUCCESSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Token token});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$LOGIN_SUCCESSImplCopyWithImpl<$Res>
    extends _$AuthenStateCopyWithImpl<$Res, _$LOGIN_SUCCESSImpl>
    implements _$$LOGIN_SUCCESSImplCopyWith<$Res> {
  __$$LOGIN_SUCCESSImplCopyWithImpl(
      _$LOGIN_SUCCESSImpl _value, $Res Function(_$LOGIN_SUCCESSImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$LOGIN_SUCCESSImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$LOGIN_SUCCESSImpl implements LOGIN_SUCCESS {
  const _$LOGIN_SUCCESSImpl(this.token);

  @override
  final Token token;

  @override
  String toString() {
    return 'AuthenState.loginSuccess(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LOGIN_SUCCESSImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LOGIN_SUCCESSImplCopyWith<_$LOGIN_SUCCESSImpl> get copyWith =>
      __$$LOGIN_SUCCESSImplCopyWithImpl<_$LOGIN_SUCCESSImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(User user) gotUser,
    required TResult Function(Token token) loginSuccess,
  }) {
    return loginSuccess(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(User user)? gotUser,
    TResult? Function(Token token)? loginSuccess,
  }) {
    return loginSuccess?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(User user)? gotUser,
    TResult Function(Token token)? loginSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(LOADING value) loading,
    required TResult Function(FAILD value) failure,
    required TResult Function(GOT_USER value) gotUser,
    required TResult Function(LOGIN_SUCCESS value) loginSuccess,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(LOADING value)? loading,
    TResult? Function(FAILD value)? failure,
    TResult? Function(GOT_USER value)? gotUser,
    TResult? Function(LOGIN_SUCCESS value)? loginSuccess,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(LOADING value)? loading,
    TResult Function(FAILD value)? failure,
    TResult Function(GOT_USER value)? gotUser,
    TResult Function(LOGIN_SUCCESS value)? loginSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LOGIN_SUCCESS implements AuthenState {
  const factory LOGIN_SUCCESS(final Token token) = _$LOGIN_SUCCESSImpl;

  Token get token;
  @JsonKey(ignore: true)
  _$$LOGIN_SUCCESSImplCopyWith<_$LOGIN_SUCCESSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
