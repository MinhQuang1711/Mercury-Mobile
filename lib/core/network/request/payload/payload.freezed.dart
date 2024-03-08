// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Payload {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(dio.FormData data) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(dio.FormData data)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(dio.FormData data)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JSON value) json,
    required TResult Function(_FILE value) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JSON value)? json,
    TResult? Function(_FILE value)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JSON value)? json,
    TResult Function(_FILE value)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res, Payload>;
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res, $Val extends Payload>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$JSONImplCopyWith<$Res> {
  factory _$$JSONImplCopyWith(
          _$JSONImpl value, $Res Function(_$JSONImpl) then) =
      __$$JSONImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$JSONImplCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$JSONImpl>
    implements _$$JSONImplCopyWith<$Res> {
  __$$JSONImplCopyWithImpl(_$JSONImpl _value, $Res Function(_$JSONImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$JSONImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$JSONImpl implements _JSON {
  const _$JSONImpl(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'Payload.json(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JSONImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JSONImplCopyWith<_$JSONImpl> get copyWith =>
      __$$JSONImplCopyWithImpl<_$JSONImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(dio.FormData data) file,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(dio.FormData data)? file,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(dio.FormData data)? file,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JSON value) json,
    required TResult Function(_FILE value) file,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JSON value)? json,
    TResult? Function(_FILE value)? file,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JSON value)? json,
    TResult Function(_FILE value)? file,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class _JSON implements Payload {
  const factory _JSON(final Map<String, dynamic> data) = _$JSONImpl;

  @override
  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$JSONImplCopyWith<_$JSONImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FILEImplCopyWith<$Res> {
  factory _$$FILEImplCopyWith(
          _$FILEImpl value, $Res Function(_$FILEImpl) then) =
      __$$FILEImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dio.FormData data});
}

/// @nodoc
class __$$FILEImplCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$FILEImpl>
    implements _$$FILEImplCopyWith<$Res> {
  __$$FILEImplCopyWithImpl(_$FILEImpl _value, $Res Function(_$FILEImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FILEImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dio.FormData,
    ));
  }
}

/// @nodoc

class _$FILEImpl implements _FILE {
  const _$FILEImpl(this.data);

  @override
  final dio.FormData data;

  @override
  String toString() {
    return 'Payload.file(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FILEImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FILEImplCopyWith<_$FILEImpl> get copyWith =>
      __$$FILEImplCopyWithImpl<_$FILEImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(dio.FormData data) file,
  }) {
    return file(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(dio.FormData data)? file,
  }) {
    return file?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(dio.FormData data)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JSON value) json,
    required TResult Function(_FILE value) file,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JSON value)? json,
    TResult? Function(_FILE value)? file,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JSON value)? json,
    TResult Function(_FILE value)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class _FILE implements Payload {
  const factory _FILE(final dio.FormData data) = _$FILEImpl;

  @override
  dio.FormData get data;
  @JsonKey(ignore: true)
  _$$FILEImplCopyWith<_$FILEImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
