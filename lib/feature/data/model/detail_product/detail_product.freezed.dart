// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailProduct _$DetailProductFromJson(Map<String, dynamic> json) {
  return _DetailProduct.fromJson(json);
}

/// @nodoc
mixin _$DetailProduct {
  String? get id => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;
  String? get ingredientId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailProductCopyWith<DetailProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductCopyWith<$Res> {
  factory $DetailProductCopyWith(
          DetailProduct value, $Res Function(DetailProduct) then) =
      _$DetailProductCopyWithImpl<$Res, DetailProduct>;
  @useResult
  $Res call(
      {String? id, double? weight, String? productId, String? ingredientId});
}

/// @nodoc
class _$DetailProductCopyWithImpl<$Res, $Val extends DetailProduct>
    implements $DetailProductCopyWith<$Res> {
  _$DetailProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? weight = freezed,
    Object? productId = freezed,
    Object? ingredientId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientId: freezed == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailProductImplCopyWith<$Res>
    implements $DetailProductCopyWith<$Res> {
  factory _$$DetailProductImplCopyWith(
          _$DetailProductImpl value, $Res Function(_$DetailProductImpl) then) =
      __$$DetailProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, double? weight, String? productId, String? ingredientId});
}

/// @nodoc
class __$$DetailProductImplCopyWithImpl<$Res>
    extends _$DetailProductCopyWithImpl<$Res, _$DetailProductImpl>
    implements _$$DetailProductImplCopyWith<$Res> {
  __$$DetailProductImplCopyWithImpl(
      _$DetailProductImpl _value, $Res Function(_$DetailProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? weight = freezed,
    Object? productId = freezed,
    Object? ingredientId = freezed,
  }) {
    return _then(_$DetailProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientId: freezed == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$DetailProductImpl implements _DetailProduct {
  const _$DetailProductImpl(
      {this.id, this.weight, this.productId, this.ingredientId});

  factory _$DetailProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailProductImplFromJson(json);

  @override
  final String? id;
  @override
  final double? weight;
  @override
  final String? productId;
  @override
  final String? ingredientId;

  @override
  String toString() {
    return 'DetailProduct(id: $id, weight: $weight, productId: $productId, ingredientId: $ingredientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, weight, productId, ingredientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailProductImplCopyWith<_$DetailProductImpl> get copyWith =>
      __$$DetailProductImplCopyWithImpl<_$DetailProductImpl>(this, _$identity);
}

abstract class _DetailProduct implements DetailProduct {
  const factory _DetailProduct(
      {final String? id,
      final double? weight,
      final String? productId,
      final String? ingredientId}) = _$DetailProductImpl;

  factory _DetailProduct.fromJson(Map<String, dynamic> json) =
      _$DetailProductImpl.fromJson;

  @override
  String? get id;
  @override
  double? get weight;
  @override
  String? get productId;
  @override
  String? get ingredientId;
  @override
  @JsonKey(ignore: true)
  _$$DetailProductImplCopyWith<_$DetailProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
