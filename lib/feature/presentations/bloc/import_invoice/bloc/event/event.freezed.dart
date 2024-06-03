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
mixin _$ImportInvoiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceQuery query) get,
    required TResult Function(ImportInvoiceRequest request) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceQuery query)? get,
    TResult? Function(ImportInvoiceRequest request)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceQuery query)? get,
    TResult Function(ImportInvoiceRequest request)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportInvoiceEventCopyWith<$Res> {
  factory $ImportInvoiceEventCopyWith(
          ImportInvoiceEvent value, $Res Function(ImportInvoiceEvent) then) =
      _$ImportInvoiceEventCopyWithImpl<$Res, ImportInvoiceEvent>;
}

/// @nodoc
class _$ImportInvoiceEventCopyWithImpl<$Res, $Val extends ImportInvoiceEvent>
    implements $ImportInvoiceEventCopyWith<$Res> {
  _$ImportInvoiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InvoiceQuery query});

  $InvoiceQueryCopyWith<$Res> get query;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$ImportInvoiceEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as InvoiceQuery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceQueryCopyWith<$Res> get query {
    return $InvoiceQueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value));
    });
  }
}

/// @nodoc

class _$GetImpl implements _Get {
  const _$GetImpl(this.query);

  @override
  final InvoiceQuery query;

  @override
  String toString() {
    return 'ImportInvoiceEvent.get(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      __$$GetImplCopyWithImpl<_$GetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceQuery query) get,
    required TResult Function(ImportInvoiceRequest request) create,
  }) {
    return get(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceQuery query)? get,
    TResult? Function(ImportInvoiceRequest request)? create,
  }) {
    return get?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceQuery query)? get,
    TResult Function(ImportInvoiceRequest request)? create,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements ImportInvoiceEvent {
  const factory _Get(final InvoiceQuery query) = _$GetImpl;

  InvoiceQuery get query;
  @JsonKey(ignore: true)
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImportInvoiceRequest request});

  $ImportInvoiceRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$ImportInvoiceEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$CreateImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ImportInvoiceRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ImportInvoiceRequestCopyWith<$Res> get request {
    return $ImportInvoiceRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.request);

  @override
  final ImportInvoiceRequest request;

  @override
  String toString() {
    return 'ImportInvoiceEvent.create(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceQuery query) get,
    required TResult Function(ImportInvoiceRequest request) create,
  }) {
    return create(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceQuery query)? get,
    TResult? Function(ImportInvoiceRequest request)? create,
  }) {
    return create?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceQuery query)? get,
    TResult Function(ImportInvoiceRequest request)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements ImportInvoiceEvent {
  const factory _Create(final ImportInvoiceRequest request) = _$CreateImpl;

  ImportInvoiceRequest get request;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
