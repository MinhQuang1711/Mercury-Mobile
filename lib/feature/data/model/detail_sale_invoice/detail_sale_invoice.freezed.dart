// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_sale_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailSaleInvoice _$DetailSaleInvoiceFromJson(Map<String, dynamic> json) {
  return _DetailSaleInvoice.fromJson(json);
}

/// @nodoc
mixin _$DetailSaleInvoice {
  String? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;
  String? get saleInvoiceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailSaleInvoiceCopyWith<DetailSaleInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSaleInvoiceCopyWith<$Res> {
  factory $DetailSaleInvoiceCopyWith(
          DetailSaleInvoice value, $Res Function(DetailSaleInvoice) then) =
      _$DetailSaleInvoiceCopyWithImpl<$Res, DetailSaleInvoice>;
  @useResult
  $Res call(
      {String? id,
      int? quantity,
      Product? product,
      String? productId,
      String? saleInvoiceId});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$DetailSaleInvoiceCopyWithImpl<$Res, $Val extends DetailSaleInvoice>
    implements $DetailSaleInvoiceCopyWith<$Res> {
  _$DetailSaleInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
    Object? productId = freezed,
    Object? saleInvoiceId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleInvoiceId: freezed == saleInvoiceId
          ? _value.saleInvoiceId
          : saleInvoiceId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DetailSaleInvoiceImplCopyWith<$Res>
    implements $DetailSaleInvoiceCopyWith<$Res> {
  factory _$$DetailSaleInvoiceImplCopyWith(_$DetailSaleInvoiceImpl value,
          $Res Function(_$DetailSaleInvoiceImpl) then) =
      __$$DetailSaleInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? quantity,
      Product? product,
      String? productId,
      String? saleInvoiceId});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$DetailSaleInvoiceImplCopyWithImpl<$Res>
    extends _$DetailSaleInvoiceCopyWithImpl<$Res, _$DetailSaleInvoiceImpl>
    implements _$$DetailSaleInvoiceImplCopyWith<$Res> {
  __$$DetailSaleInvoiceImplCopyWithImpl(_$DetailSaleInvoiceImpl _value,
      $Res Function(_$DetailSaleInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
    Object? productId = freezed,
    Object? saleInvoiceId = freezed,
  }) {
    return _then(_$DetailSaleInvoiceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleInvoiceId: freezed == saleInvoiceId
          ? _value.saleInvoiceId
          : saleInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$DetailSaleInvoiceImpl implements _DetailSaleInvoice {
  const _$DetailSaleInvoiceImpl(
      {this.id,
      this.quantity,
      this.product,
      this.productId,
      this.saleInvoiceId});

  factory _$DetailSaleInvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailSaleInvoiceImplFromJson(json);

  @override
  final String? id;
  @override
  final int? quantity;
  @override
  final Product? product;
  @override
  final String? productId;
  @override
  final String? saleInvoiceId;

  @override
  String toString() {
    return 'DetailSaleInvoice(id: $id, quantity: $quantity, product: $product, productId: $productId, saleInvoiceId: $saleInvoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSaleInvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.saleInvoiceId, saleInvoiceId) ||
                other.saleInvoiceId == saleInvoiceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quantity, product, productId, saleInvoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSaleInvoiceImplCopyWith<_$DetailSaleInvoiceImpl> get copyWith =>
      __$$DetailSaleInvoiceImplCopyWithImpl<_$DetailSaleInvoiceImpl>(
          this, _$identity);
}

abstract class _DetailSaleInvoice implements DetailSaleInvoice {
  const factory _DetailSaleInvoice(
      {final String? id,
      final int? quantity,
      final Product? product,
      final String? productId,
      final String? saleInvoiceId}) = _$DetailSaleInvoiceImpl;

  factory _DetailSaleInvoice.fromJson(Map<String, dynamic> json) =
      _$DetailSaleInvoiceImpl.fromJson;

  @override
  String? get id;
  @override
  int? get quantity;
  @override
  Product? get product;
  @override
  String? get productId;
  @override
  String? get saleInvoiceId;
  @override
  @JsonKey(ignore: true)
  _$$DetailSaleInvoiceImplCopyWith<_$DetailSaleInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
