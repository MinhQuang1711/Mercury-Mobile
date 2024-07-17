// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProdductQuery {
  String? get name => throw _privateConstructorUsedError;
  String? get priceListId => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdductQueryCopyWith<ProdductQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdductQueryCopyWith<$Res> {
  factory $ProdductQueryCopyWith(
          ProdductQuery value, $Res Function(ProdductQuery) then) =
      _$ProdductQueryCopyWithImpl<$Res, ProdductQuery>;
  @useResult
  $Res call({String? name, String? priceListId, int pageSize, int pageNumber});
}

/// @nodoc
class _$ProdductQueryCopyWithImpl<$Res, $Val extends ProdductQuery>
    implements $ProdductQueryCopyWith<$Res> {
  _$ProdductQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? priceListId = freezed,
    Object? pageSize = null,
    Object? pageNumber = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListId: freezed == priceListId
          ? _value.priceListId
          : priceListId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProdductQueryImplCopyWith<$Res>
    implements $ProdductQueryCopyWith<$Res> {
  factory _$$ProdductQueryImplCopyWith(
          _$ProdductQueryImpl value, $Res Function(_$ProdductQueryImpl) then) =
      __$$ProdductQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? priceListId, int pageSize, int pageNumber});
}

/// @nodoc
class __$$ProdductQueryImplCopyWithImpl<$Res>
    extends _$ProdductQueryCopyWithImpl<$Res, _$ProdductQueryImpl>
    implements _$$ProdductQueryImplCopyWith<$Res> {
  __$$ProdductQueryImplCopyWithImpl(
      _$ProdductQueryImpl _value, $Res Function(_$ProdductQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? priceListId = freezed,
    Object? pageSize = null,
    Object? pageNumber = null,
  }) {
    return _then(_$ProdductQueryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListId: freezed == priceListId
          ? _value.priceListId
          : priceListId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ProdductQueryImpl implements _ProdductQuery {
  const _$ProdductQueryImpl(
      {this.name, this.priceListId, this.pageSize = 20, this.pageNumber = 1});

  @override
  final String? name;
  @override
  final String? priceListId;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int pageNumber;

  @override
  String toString() {
    return 'ProdductQuery(name: $name, priceListId: $priceListId, pageSize: $pageSize, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdductQueryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.priceListId, priceListId) ||
                other.priceListId == priceListId) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, priceListId, pageSize, pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdductQueryImplCopyWith<_$ProdductQueryImpl> get copyWith =>
      __$$ProdductQueryImplCopyWithImpl<_$ProdductQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProdductQueryImplToJson(
      this,
    );
  }
}

abstract class _ProdductQuery implements ProdductQuery {
  const factory _ProdductQuery(
      {final String? name,
      final String? priceListId,
      final int pageSize,
      final int pageNumber}) = _$ProdductQueryImpl;

  @override
  String? get name;
  @override
  String? get priceListId;
  @override
  int get pageSize;
  @override
  int get pageNumber;
  @override
  @JsonKey(ignore: true)
  _$$ProdductQueryImplCopyWith<_$ProdductQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
