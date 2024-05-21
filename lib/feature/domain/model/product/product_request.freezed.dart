// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductRequest {
  String? get id => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get attachFile => throw _privateConstructorUsedError;
  List<ComboBox>? get detailProducts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductRequestCopyWith<ProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRequestCopyWith<$Res> {
  factory $ProductRequestCopyWith(
          ProductRequest value, $Res Function(ProductRequest) then) =
      _$ProductRequestCopyWithImpl<$Res, ProductRequest>;
  @useResult
  $Res call(
      {String? id,
      int? price,
      String? name,
      String? attachFile,
      List<ComboBox>? detailProducts});
}

/// @nodoc
class _$ProductRequestCopyWithImpl<$Res, $Val extends ProductRequest>
    implements $ProductRequestCopyWith<$Res> {
  _$ProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? attachFile = freezed,
    Object? detailProducts = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      attachFile: freezed == attachFile
          ? _value.attachFile
          : attachFile // ignore: cast_nullable_to_non_nullable
              as String?,
      detailProducts: freezed == detailProducts
          ? _value.detailProducts
          : detailProducts // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductRequestImplCopyWith<$Res>
    implements $ProductRequestCopyWith<$Res> {
  factory _$$ProductRequestImplCopyWith(_$ProductRequestImpl value,
          $Res Function(_$ProductRequestImpl) then) =
      __$$ProductRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? price,
      String? name,
      String? attachFile,
      List<ComboBox>? detailProducts});
}

/// @nodoc
class __$$ProductRequestImplCopyWithImpl<$Res>
    extends _$ProductRequestCopyWithImpl<$Res, _$ProductRequestImpl>
    implements _$$ProductRequestImplCopyWith<$Res> {
  __$$ProductRequestImplCopyWithImpl(
      _$ProductRequestImpl _value, $Res Function(_$ProductRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? attachFile = freezed,
    Object? detailProducts = freezed,
  }) {
    return _then(_$ProductRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      attachFile: freezed == attachFile
          ? _value.attachFile
          : attachFile // ignore: cast_nullable_to_non_nullable
              as String?,
      detailProducts: freezed == detailProducts
          ? _value._detailProducts
          : detailProducts // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ProductRequestImpl implements _ProductRequest {
  const _$ProductRequestImpl(
      {this.id,
      this.price,
      this.name,
      this.attachFile,
      final List<ComboBox>? detailProducts})
      : _detailProducts = detailProducts;

  @override
  final String? id;
  @override
  final int? price;
  @override
  final String? name;
  @override
  final String? attachFile;
  final List<ComboBox>? _detailProducts;
  @override
  List<ComboBox>? get detailProducts {
    final value = _detailProducts;
    if (value == null) return null;
    if (_detailProducts is EqualUnmodifiableListView) return _detailProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductRequest(id: $id, price: $price, name: $name, attachFile: $attachFile, detailProducts: $detailProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.attachFile, attachFile) ||
                other.attachFile == attachFile) &&
            const DeepCollectionEquality()
                .equals(other._detailProducts, _detailProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, name, attachFile,
      const DeepCollectionEquality().hash(_detailProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      __$$ProductRequestImplCopyWithImpl<_$ProductRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductRequest implements ProductRequest {
  const factory _ProductRequest(
      {final String? id,
      final int? price,
      final String? name,
      final String? attachFile,
      final List<ComboBox>? detailProducts}) = _$ProductRequestImpl;

  @override
  String? get id;
  @override
  int? get price;
  @override
  String? get name;
  @override
  String? get attachFile;
  @override
  List<ComboBox>? get detailProducts;
  @override
  @JsonKey(ignore: true)
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
