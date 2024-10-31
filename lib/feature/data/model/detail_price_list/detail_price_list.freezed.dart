// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_price_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailPriceList _$DetailPriceListFromJson(Map<String, dynamic> json) {
  return _DetailPriceList.fromJson(json);
}

/// @nodoc
mixin _$DetailPriceList {
  String? get productId => throw _privateConstructorUsedError;
  String? get priceListId => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPriceListCopyWith<DetailPriceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPriceListCopyWith<$Res> {
  factory $DetailPriceListCopyWith(
          DetailPriceList value, $Res Function(DetailPriceList) then) =
      _$DetailPriceListCopyWithImpl<$Res, DetailPriceList>;
  @useResult
  $Res call(
      {String? productId,
      String? priceListId,
      int? salePrice,
      Product? product,
      String? id});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$DetailPriceListCopyWithImpl<$Res, $Val extends DetailPriceList>
    implements $DetailPriceListCopyWith<$Res> {
  _$DetailPriceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? priceListId = freezed,
    Object? salePrice = freezed,
    Object? product = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListId: freezed == priceListId
          ? _value.priceListId
          : priceListId // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailPriceListImplCopyWith<$Res>
    implements $DetailPriceListCopyWith<$Res> {
  factory _$$DetailPriceListImplCopyWith(_$DetailPriceListImpl value,
          $Res Function(_$DetailPriceListImpl) then) =
      __$$DetailPriceListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productId,
      String? priceListId,
      int? salePrice,
      Product? product,
      String? id});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$DetailPriceListImplCopyWithImpl<$Res>
    extends _$DetailPriceListCopyWithImpl<$Res, _$DetailPriceListImpl>
    implements _$$DetailPriceListImplCopyWith<$Res> {
  __$$DetailPriceListImplCopyWithImpl(
      _$DetailPriceListImpl _value, $Res Function(_$DetailPriceListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? priceListId = freezed,
    Object? salePrice = freezed,
    Object? product = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DetailPriceListImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListId: freezed == priceListId
          ? _value.priceListId
          : priceListId // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$DetailPriceListImpl implements _DetailPriceList {
  const _$DetailPriceListImpl(
      {this.productId,
      this.priceListId,
      this.salePrice,
      this.product,
      this.id});

  factory _$DetailPriceListImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPriceListImplFromJson(json);

  @override
  final String? productId;
  @override
  final String? priceListId;
  @override
  final int? salePrice;
  @override
  final Product? product;
  @override
  final String? id;

  @override
  String toString() {
    return 'DetailPriceList(productId: $productId, priceListId: $priceListId, salePrice: $salePrice, product: $product, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPriceListImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.priceListId, priceListId) ||
                other.priceListId == priceListId) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, priceListId, salePrice, product, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPriceListImplCopyWith<_$DetailPriceListImpl> get copyWith =>
      __$$DetailPriceListImplCopyWithImpl<_$DetailPriceListImpl>(
          this, _$identity);
}

abstract class _DetailPriceList implements DetailPriceList {
  const factory _DetailPriceList(
      {final String? productId,
      final String? priceListId,
      final int? salePrice,
      final Product? product,
      final String? id}) = _$DetailPriceListImpl;

  factory _DetailPriceList.fromJson(Map<String, dynamic> json) =
      _$DetailPriceListImpl.fromJson;

  @override
  String? get productId;
  @override
  String? get priceListId;
  @override
  int? get salePrice;
  @override
  Product? get product;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DetailPriceListImplCopyWith<_$DetailPriceListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
