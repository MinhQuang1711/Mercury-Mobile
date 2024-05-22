// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'combo_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComboBox _$ComboBoxFromJson(Map<String, dynamic> json) {
  return _ComboBox.fromJson(json);
}

/// @nodoc
mixin _$ComboBox {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComboBoxCopyWith<ComboBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComboBoxCopyWith<$Res> {
  factory $ComboBoxCopyWith(ComboBox value, $Res Function(ComboBox) then) =
      _$ComboBoxCopyWithImpl<$Res, ComboBox>;
  @useResult
  $Res call(
      {String? name, String? id, double? value, double? price, int? quantity});
}

/// @nodoc
class _$ComboBoxCopyWithImpl<$Res, $Val extends ComboBox>
    implements $ComboBoxCopyWith<$Res> {
  _$ComboBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? value = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComboBoxImplCopyWith<$Res>
    implements $ComboBoxCopyWith<$Res> {
  factory _$$ComboBoxImplCopyWith(
          _$ComboBoxImpl value, $Res Function(_$ComboBoxImpl) then) =
      __$$ComboBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? id, double? value, double? price, int? quantity});
}

/// @nodoc
class __$$ComboBoxImplCopyWithImpl<$Res>
    extends _$ComboBoxCopyWithImpl<$Res, _$ComboBoxImpl>
    implements _$$ComboBoxImplCopyWith<$Res> {
  __$$ComboBoxImplCopyWithImpl(
      _$ComboBoxImpl _value, $Res Function(_$ComboBoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? value = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$ComboBoxImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComboBoxImpl implements _ComboBox {
  const _$ComboBoxImpl(
      {this.name, this.id, this.value, this.price, this.quantity});

  factory _$ComboBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComboBoxImplFromJson(json);

  @override
  final String? name;
  @override
  final String? id;
  @override
  final double? value;
  @override
  final double? price;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'ComboBox(name: $name, id: $id, value: $value, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComboBoxImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, value, price, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComboBoxImplCopyWith<_$ComboBoxImpl> get copyWith =>
      __$$ComboBoxImplCopyWithImpl<_$ComboBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComboBoxImplToJson(
      this,
    );
  }
}

abstract class _ComboBox implements ComboBox {
  const factory _ComboBox(
      {final String? name,
      final String? id,
      final double? value,
      final double? price,
      final int? quantity}) = _$ComboBoxImpl;

  factory _ComboBox.fromJson(Map<String, dynamic> json) =
      _$ComboBoxImpl.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  double? get value;
  @override
  double? get price;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ComboBoxImplCopyWith<_$ComboBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
