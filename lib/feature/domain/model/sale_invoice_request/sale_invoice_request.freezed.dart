// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_invoice_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaleInvoiceRequest {
  double? get discount => throw _privateConstructorUsedError;
  Voucher? get voucher => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  double? get shippingFee => throw _privateConstructorUsedError;
  int? get paymentType => throw _privateConstructorUsedError;
  List<ComboBox>? get detailSaleInvoice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleInvoiceRequestCopyWith<SaleInvoiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInvoiceRequestCopyWith<$Res> {
  factory $SaleInvoiceRequestCopyWith(
          SaleInvoiceRequest value, $Res Function(SaleInvoiceRequest) then) =
      _$SaleInvoiceRequestCopyWithImpl<$Res, SaleInvoiceRequest>;
  @useResult
  $Res call(
      {double? discount,
      Voucher? voucher,
      String? customerId,
      double? shippingFee,
      int? paymentType,
      List<ComboBox>? detailSaleInvoice});

  $VoucherCopyWith<$Res>? get voucher;
}

/// @nodoc
class _$SaleInvoiceRequestCopyWithImpl<$Res, $Val extends SaleInvoiceRequest>
    implements $SaleInvoiceRequestCopyWith<$Res> {
  _$SaleInvoiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? voucher = freezed,
    Object? customerId = freezed,
    Object? shippingFee = freezed,
    Object? paymentType = freezed,
    Object? detailSaleInvoice = freezed,
  }) {
    return _then(_value.copyWith(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Voucher?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingFee: freezed == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      detailSaleInvoice: freezed == detailSaleInvoice
          ? _value.detailSaleInvoice
          : detailSaleInvoice // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VoucherCopyWith<$Res>? get voucher {
    if (_value.voucher == null) {
      return null;
    }

    return $VoucherCopyWith<$Res>(_value.voucher!, (value) {
      return _then(_value.copyWith(voucher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaleInvoiceRequestImplCopyWith<$Res>
    implements $SaleInvoiceRequestCopyWith<$Res> {
  factory _$$SaleInvoiceRequestImplCopyWith(_$SaleInvoiceRequestImpl value,
          $Res Function(_$SaleInvoiceRequestImpl) then) =
      __$$SaleInvoiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? discount,
      Voucher? voucher,
      String? customerId,
      double? shippingFee,
      int? paymentType,
      List<ComboBox>? detailSaleInvoice});

  @override
  $VoucherCopyWith<$Res>? get voucher;
}

/// @nodoc
class __$$SaleInvoiceRequestImplCopyWithImpl<$Res>
    extends _$SaleInvoiceRequestCopyWithImpl<$Res, _$SaleInvoiceRequestImpl>
    implements _$$SaleInvoiceRequestImplCopyWith<$Res> {
  __$$SaleInvoiceRequestImplCopyWithImpl(_$SaleInvoiceRequestImpl _value,
      $Res Function(_$SaleInvoiceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? voucher = freezed,
    Object? customerId = freezed,
    Object? shippingFee = freezed,
    Object? paymentType = freezed,
    Object? detailSaleInvoice = freezed,
  }) {
    return _then(_$SaleInvoiceRequestImpl(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Voucher?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingFee: freezed == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      detailSaleInvoice: freezed == detailSaleInvoice
          ? _value._detailSaleInvoice
          : detailSaleInvoice // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$SaleInvoiceRequestImpl implements _SaleInvoiceRequest {
  const _$SaleInvoiceRequestImpl(
      {this.discount,
      this.voucher,
      this.customerId,
      this.shippingFee,
      this.paymentType = 0,
      final List<ComboBox>? detailSaleInvoice = const []})
      : _detailSaleInvoice = detailSaleInvoice;

  @override
  final double? discount;
  @override
  final Voucher? voucher;
  @override
  final String? customerId;
  @override
  final double? shippingFee;
  @override
  @JsonKey()
  final int? paymentType;
  final List<ComboBox>? _detailSaleInvoice;
  @override
  @JsonKey()
  List<ComboBox>? get detailSaleInvoice {
    final value = _detailSaleInvoice;
    if (value == null) return null;
    if (_detailSaleInvoice is EqualUnmodifiableListView)
      return _detailSaleInvoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SaleInvoiceRequest(discount: $discount, voucher: $voucher, customerId: $customerId, shippingFee: $shippingFee, paymentType: $paymentType, detailSaleInvoice: $detailSaleInvoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleInvoiceRequestImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.shippingFee, shippingFee) ||
                other.shippingFee == shippingFee) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            const DeepCollectionEquality()
                .equals(other._detailSaleInvoice, _detailSaleInvoice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      discount,
      voucher,
      customerId,
      shippingFee,
      paymentType,
      const DeepCollectionEquality().hash(_detailSaleInvoice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleInvoiceRequestImplCopyWith<_$SaleInvoiceRequestImpl> get copyWith =>
      __$$SaleInvoiceRequestImplCopyWithImpl<_$SaleInvoiceRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleInvoiceRequestImplToJson(
      this,
    );
  }
}

abstract class _SaleInvoiceRequest implements SaleInvoiceRequest {
  const factory _SaleInvoiceRequest(
      {final double? discount,
      final Voucher? voucher,
      final String? customerId,
      final double? shippingFee,
      final int? paymentType,
      final List<ComboBox>? detailSaleInvoice}) = _$SaleInvoiceRequestImpl;

  @override
  double? get discount;
  @override
  Voucher? get voucher;
  @override
  String? get customerId;
  @override
  double? get shippingFee;
  @override
  int? get paymentType;
  @override
  List<ComboBox>? get detailSaleInvoice;
  @override
  @JsonKey(ignore: true)
  _$$SaleInvoiceRequestImplCopyWith<_$SaleInvoiceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
