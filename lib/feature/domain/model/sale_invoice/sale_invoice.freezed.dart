// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaleInvoice _$SaleInvoiceFromJson(Map<String, dynamic> json) {
  return _SaleInvoice.fromJson(json);
}

/// @nodoc
mixin _$SaleInvoice {
  double? get totalPrice => throw _privateConstructorUsedError;
  double? get dicount => throw _privateConstructorUsedError;
  String? get voucherId => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  DateTime? get createDate => throw _privateConstructorUsedError;
  String? get createdByName => throw _privateConstructorUsedError;
  String? get ownerName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<DetailSaleInvoice>? get detailSaleInvoices =>
      throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaleInvoiceCopyWith<SaleInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInvoiceCopyWith<$Res> {
  factory $SaleInvoiceCopyWith(
          SaleInvoice value, $Res Function(SaleInvoice) then) =
      _$SaleInvoiceCopyWithImpl<$Res, SaleInvoice>;
  @useResult
  $Res call(
      {double? totalPrice,
      double? dicount,
      String? voucherId,
      String? customerId,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id,
      List<DetailSaleInvoice>? detailSaleInvoices,
      Customer? customer});

  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$SaleInvoiceCopyWithImpl<$Res, $Val extends SaleInvoice>
    implements $SaleInvoiceCopyWith<$Res> {
  _$SaleInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = freezed,
    Object? dicount = freezed,
    Object? voucherId = freezed,
    Object? customerId = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
    Object? detailSaleInvoices = freezed,
    Object? customer = freezed,
  }) {
    return _then(_value.copyWith(
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      dicount: freezed == dicount
          ? _value.dicount
          : dicount // ignore: cast_nullable_to_non_nullable
              as double?,
      voucherId: freezed == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      detailSaleInvoices: freezed == detailSaleInvoices
          ? _value.detailSaleInvoices
          : detailSaleInvoices // ignore: cast_nullable_to_non_nullable
              as List<DetailSaleInvoice>?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaleInvoiceImplCopyWith<$Res>
    implements $SaleInvoiceCopyWith<$Res> {
  factory _$$SaleInvoiceImplCopyWith(
          _$SaleInvoiceImpl value, $Res Function(_$SaleInvoiceImpl) then) =
      __$$SaleInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? totalPrice,
      double? dicount,
      String? voucherId,
      String? customerId,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id,
      List<DetailSaleInvoice>? detailSaleInvoices,
      Customer? customer});

  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$SaleInvoiceImplCopyWithImpl<$Res>
    extends _$SaleInvoiceCopyWithImpl<$Res, _$SaleInvoiceImpl>
    implements _$$SaleInvoiceImplCopyWith<$Res> {
  __$$SaleInvoiceImplCopyWithImpl(
      _$SaleInvoiceImpl _value, $Res Function(_$SaleInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = freezed,
    Object? dicount = freezed,
    Object? voucherId = freezed,
    Object? customerId = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
    Object? detailSaleInvoices = freezed,
    Object? customer = freezed,
  }) {
    return _then(_$SaleInvoiceImpl(
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      dicount: freezed == dicount
          ? _value.dicount
          : dicount // ignore: cast_nullable_to_non_nullable
              as double?,
      voucherId: freezed == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      detailSaleInvoices: freezed == detailSaleInvoices
          ? _value._detailSaleInvoices
          : detailSaleInvoices // ignore: cast_nullable_to_non_nullable
              as List<DetailSaleInvoice>?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SaleInvoiceImpl implements _SaleInvoice {
  const _$SaleInvoiceImpl(
      {this.totalPrice,
      this.dicount,
      this.voucherId,
      this.customerId,
      this.createDate,
      this.createdByName,
      this.ownerName,
      this.id,
      final List<DetailSaleInvoice>? detailSaleInvoices,
      this.customer})
      : _detailSaleInvoices = detailSaleInvoices;

  factory _$SaleInvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleInvoiceImplFromJson(json);

  @override
  final double? totalPrice;
  @override
  final double? dicount;
  @override
  final String? voucherId;
  @override
  final String? customerId;
  @override
  final DateTime? createDate;
  @override
  final String? createdByName;
  @override
  final String? ownerName;
  @override
  final String? id;
  final List<DetailSaleInvoice>? _detailSaleInvoices;
  @override
  List<DetailSaleInvoice>? get detailSaleInvoices {
    final value = _detailSaleInvoices;
    if (value == null) return null;
    if (_detailSaleInvoices is EqualUnmodifiableListView)
      return _detailSaleInvoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Customer? customer;

  @override
  String toString() {
    return 'SaleInvoice(totalPrice: $totalPrice, dicount: $dicount, voucherId: $voucherId, customerId: $customerId, createDate: $createDate, createdByName: $createdByName, ownerName: $ownerName, id: $id, detailSaleInvoices: $detailSaleInvoices, customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleInvoiceImpl &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.dicount, dicount) || other.dicount == dicount) &&
            (identical(other.voucherId, voucherId) ||
                other.voucherId == voucherId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._detailSaleInvoices, _detailSaleInvoices) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalPrice,
      dicount,
      voucherId,
      customerId,
      createDate,
      createdByName,
      ownerName,
      id,
      const DeepCollectionEquality().hash(_detailSaleInvoices),
      customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleInvoiceImplCopyWith<_$SaleInvoiceImpl> get copyWith =>
      __$$SaleInvoiceImplCopyWithImpl<_$SaleInvoiceImpl>(this, _$identity);
}

abstract class _SaleInvoice implements SaleInvoice {
  const factory _SaleInvoice(
      {final double? totalPrice,
      final double? dicount,
      final String? voucherId,
      final String? customerId,
      final DateTime? createDate,
      final String? createdByName,
      final String? ownerName,
      final String? id,
      final List<DetailSaleInvoice>? detailSaleInvoices,
      final Customer? customer}) = _$SaleInvoiceImpl;

  factory _SaleInvoice.fromJson(Map<String, dynamic> json) =
      _$SaleInvoiceImpl.fromJson;

  @override
  double? get totalPrice;
  @override
  double? get dicount;
  @override
  String? get voucherId;
  @override
  String? get customerId;
  @override
  DateTime? get createDate;
  @override
  String? get createdByName;
  @override
  String? get ownerName;
  @override
  String? get id;
  @override
  List<DetailSaleInvoice>? get detailSaleInvoices;
  @override
  Customer? get customer;
  @override
  @JsonKey(ignore: true)
  _$$SaleInvoiceImplCopyWith<_$SaleInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
