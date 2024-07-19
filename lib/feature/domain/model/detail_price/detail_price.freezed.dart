// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailPrice {
  String? get productId =>
      throw _privateConstructorUsedError; // Name không đẩy lên api. Sử dụng để hiển thị phí client
  String? get prodName => throw _privateConstructorUsedError;
  double? get salePrice => throw _privateConstructorUsedError;
  double? get defaultPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailPriceCopyWith<DetailPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPriceCopyWith<$Res> {
  factory $DetailPriceCopyWith(
          DetailPrice value, $Res Function(DetailPrice) then) =
      _$DetailPriceCopyWithImpl<$Res, DetailPrice>;
  @useResult
  $Res call(
      {String? productId,
      String? prodName,
      double? salePrice,
      double? defaultPrice});
}

/// @nodoc
class _$DetailPriceCopyWithImpl<$Res, $Val extends DetailPrice>
    implements $DetailPriceCopyWith<$Res> {
  _$DetailPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? prodName = freezed,
    Object? salePrice = freezed,
    Object? defaultPrice = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      defaultPrice: freezed == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailPriceImplCopyWith<$Res>
    implements $DetailPriceCopyWith<$Res> {
  factory _$$DetailPriceImplCopyWith(
          _$DetailPriceImpl value, $Res Function(_$DetailPriceImpl) then) =
      __$$DetailPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productId,
      String? prodName,
      double? salePrice,
      double? defaultPrice});
}

/// @nodoc
class __$$DetailPriceImplCopyWithImpl<$Res>
    extends _$DetailPriceCopyWithImpl<$Res, _$DetailPriceImpl>
    implements _$$DetailPriceImplCopyWith<$Res> {
  __$$DetailPriceImplCopyWithImpl(
      _$DetailPriceImpl _value, $Res Function(_$DetailPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? prodName = freezed,
    Object? salePrice = freezed,
    Object? defaultPrice = freezed,
  }) {
    return _then(_$DetailPriceImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      defaultPrice: freezed == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$DetailPriceImpl implements _DetailPrice {
  const _$DetailPriceImpl(
      {this.productId, this.prodName, this.salePrice, this.defaultPrice});

  @override
  final String? productId;
// Name không đẩy lên api. Sử dụng để hiển thị phí client
  @override
  final String? prodName;
  @override
  final double? salePrice;
  @override
  final double? defaultPrice;

  @override
  String toString() {
    return 'DetailPrice(productId: $productId, prodName: $prodName, salePrice: $salePrice, defaultPrice: $defaultPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPriceImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.defaultPrice, defaultPrice) ||
                other.defaultPrice == defaultPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, prodName, salePrice, defaultPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPriceImplCopyWith<_$DetailPriceImpl> get copyWith =>
      __$$DetailPriceImplCopyWithImpl<_$DetailPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPriceImplToJson(
      this,
    );
  }
}

abstract class _DetailPrice implements DetailPrice {
  const factory _DetailPrice(
      {final String? productId,
      final String? prodName,
      final double? salePrice,
      final double? defaultPrice}) = _$DetailPriceImpl;

  @override
  String? get productId;
  @override // Name không đẩy lên api. Sử dụng để hiển thị phí client
  String? get prodName;
  @override
  double? get salePrice;
  @override
  double? get defaultPrice;
  @override
  @JsonKey(ignore: true)
  _$$DetailPriceImplCopyWith<_$DetailPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
