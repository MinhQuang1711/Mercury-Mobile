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
mixin _$PriceListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(PriceListRequest dto) create,
    required TResult Function(PriceListRequest dto) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(PriceListRequest dto)? create,
    TResult? Function(PriceListRequest dto)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(PriceListRequest dto)? create,
    TResult Function(PriceListRequest dto)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceListEventCopyWith<$Res> {
  factory $PriceListEventCopyWith(
          PriceListEvent value, $Res Function(PriceListEvent) then) =
      _$PriceListEventCopyWithImpl<$Res, PriceListEvent>;
}

/// @nodoc
class _$PriceListEventCopyWithImpl<$Res, $Val extends PriceListEvent>
    implements $PriceListEventCopyWith<$Res> {
  _$PriceListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$PriceListEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PriceListEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(PriceListRequest dto) create,
    required TResult Function(PriceListRequest dto) update,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(PriceListRequest dto)? create,
    TResult? Function(PriceListRequest dto)? update,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(PriceListRequest dto)? create,
    TResult Function(PriceListRequest dto)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements PriceListEvent {
  const factory _Delete(final String id) = _$DeleteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PriceListRequest dto});

  $PriceListRequestCopyWith<$Res> get dto;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$PriceListEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as PriceListRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceListRequestCopyWith<$Res> get dto {
    return $PriceListRequestCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.dto);

  @override
  final PriceListRequest dto;

  @override
  String toString() {
    return 'PriceListEvent.create(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(PriceListRequest dto) create,
    required TResult Function(PriceListRequest dto) update,
  }) {
    return create(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(PriceListRequest dto)? create,
    TResult? Function(PriceListRequest dto)? update,
  }) {
    return create?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(PriceListRequest dto)? create,
    TResult Function(PriceListRequest dto)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements PriceListEvent {
  const factory _Create(final PriceListRequest dto) = _$CreateImpl;

  PriceListRequest get dto;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PriceListRequest dto});

  $PriceListRequestCopyWith<$Res> get dto;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$PriceListEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$UpdateImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as PriceListRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceListRequestCopyWith<$Res> get dto {
    return $PriceListRequestCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.dto);

  @override
  final PriceListRequest dto;

  @override
  String toString() {
    return 'PriceListEvent.update(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(PriceListRequest dto) create,
    required TResult Function(PriceListRequest dto) update,
  }) {
    return update(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(PriceListRequest dto)? create,
    TResult? Function(PriceListRequest dto)? update,
  }) {
    return update?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(PriceListRequest dto)? create,
    TResult Function(PriceListRequest dto)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements PriceListEvent {
  const factory _Update(final PriceListRequest dto) = _$UpdateImpl;

  PriceListRequest get dto;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
