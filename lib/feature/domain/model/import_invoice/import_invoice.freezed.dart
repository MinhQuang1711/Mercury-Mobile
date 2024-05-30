// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImportInvoice _$ImportInvoiceFromJson(Map<String, dynamic> json) {
  return _ImportInvoice.fromJson(json);
}

/// @nodoc
mixin _$ImportInvoice {
  String? get description => throw _privateConstructorUsedError;
  double? get totalPrice => throw _privateConstructorUsedError;
  DateTime? get createDate => throw _privateConstructorUsedError;
  String? get createdByName => throw _privateConstructorUsedError;
  String? get ownerName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImportInvoiceCopyWith<ImportInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportInvoiceCopyWith<$Res> {
  factory $ImportInvoiceCopyWith(
          ImportInvoice value, $Res Function(ImportInvoice) then) =
      _$ImportInvoiceCopyWithImpl<$Res, ImportInvoice>;
  @useResult
  $Res call(
      {String? description,
      double? totalPrice,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id});
}

/// @nodoc
class _$ImportInvoiceCopyWithImpl<$Res, $Val extends ImportInvoice>
    implements $ImportInvoiceCopyWith<$Res> {
  _$ImportInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? totalPrice = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImportInvoiceImplCopyWith<$Res>
    implements $ImportInvoiceCopyWith<$Res> {
  factory _$$ImportInvoiceImplCopyWith(
          _$ImportInvoiceImpl value, $Res Function(_$ImportInvoiceImpl) then) =
      __$$ImportInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      double? totalPrice,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id});
}

/// @nodoc
class __$$ImportInvoiceImplCopyWithImpl<$Res>
    extends _$ImportInvoiceCopyWithImpl<$Res, _$ImportInvoiceImpl>
    implements _$$ImportInvoiceImplCopyWith<$Res> {
  __$$ImportInvoiceImplCopyWithImpl(
      _$ImportInvoiceImpl _value, $Res Function(_$ImportInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? totalPrice = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ImportInvoiceImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ImportInvoiceImpl implements _ImportInvoice {
  const _$ImportInvoiceImpl(
      {this.description,
      this.totalPrice,
      this.createDate,
      this.createdByName,
      this.ownerName,
      this.id});

  factory _$ImportInvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImportInvoiceImplFromJson(json);

  @override
  final String? description;
  @override
  final double? totalPrice;
  @override
  final DateTime? createDate;
  @override
  final String? createdByName;
  @override
  final String? ownerName;
  @override
  final String? id;

  @override
  String toString() {
    return 'ImportInvoice(description: $description, totalPrice: $totalPrice, createDate: $createDate, createdByName: $createdByName, ownerName: $ownerName, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportInvoiceImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, totalPrice,
      createDate, createdByName, ownerName, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportInvoiceImplCopyWith<_$ImportInvoiceImpl> get copyWith =>
      __$$ImportInvoiceImplCopyWithImpl<_$ImportInvoiceImpl>(this, _$identity);
}

abstract class _ImportInvoice implements ImportInvoice {
  const factory _ImportInvoice(
      {final String? description,
      final double? totalPrice,
      final DateTime? createDate,
      final String? createdByName,
      final String? ownerName,
      final String? id}) = _$ImportInvoiceImpl;

  factory _ImportInvoice.fromJson(Map<String, dynamic> json) =
      _$ImportInvoiceImpl.fromJson;

  @override
  String? get description;
  @override
  double? get totalPrice;
  @override
  DateTime? get createDate;
  @override
  String? get createdByName;
  @override
  String? get ownerName;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ImportInvoiceImplCopyWith<_$ImportInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
