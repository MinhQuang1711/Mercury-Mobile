// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceListRequest {
  String? get name => throw _privateConstructorUsedError;
  List<DetailPrice>? get detailPrices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceListRequestCopyWith<PriceListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceListRequestCopyWith<$Res> {
  factory $PriceListRequestCopyWith(
          PriceListRequest value, $Res Function(PriceListRequest) then) =
      _$PriceListRequestCopyWithImpl<$Res, PriceListRequest>;
  @useResult
  $Res call({String? name, List<DetailPrice>? detailPrices});
}

/// @nodoc
class _$PriceListRequestCopyWithImpl<$Res, $Val extends PriceListRequest>
    implements $PriceListRequestCopyWith<$Res> {
  _$PriceListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? detailPrices = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detailPrices: freezed == detailPrices
          ? _value.detailPrices
          : detailPrices // ignore: cast_nullable_to_non_nullable
              as List<DetailPrice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceListRequestImplCopyWith<$Res>
    implements $PriceListRequestCopyWith<$Res> {
  factory _$$PriceListRequestImplCopyWith(_$PriceListRequestImpl value,
          $Res Function(_$PriceListRequestImpl) then) =
      __$$PriceListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<DetailPrice>? detailPrices});
}

/// @nodoc
class __$$PriceListRequestImplCopyWithImpl<$Res>
    extends _$PriceListRequestCopyWithImpl<$Res, _$PriceListRequestImpl>
    implements _$$PriceListRequestImplCopyWith<$Res> {
  __$$PriceListRequestImplCopyWithImpl(_$PriceListRequestImpl _value,
      $Res Function(_$PriceListRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? detailPrices = freezed,
  }) {
    return _then(_$PriceListRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detailPrices: freezed == detailPrices
          ? _value._detailPrices
          : detailPrices // ignore: cast_nullable_to_non_nullable
              as List<DetailPrice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$PriceListRequestImpl implements _PriceListRequest {
  const _$PriceListRequestImpl(
      {this.name, final List<DetailPrice>? detailPrices})
      : _detailPrices = detailPrices;

  @override
  final String? name;
  final List<DetailPrice>? _detailPrices;
  @override
  List<DetailPrice>? get detailPrices {
    final value = _detailPrices;
    if (value == null) return null;
    if (_detailPrices is EqualUnmodifiableListView) return _detailPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PriceListRequest(name: $name, detailPrices: $detailPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceListRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._detailPrices, _detailPrices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_detailPrices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceListRequestImplCopyWith<_$PriceListRequestImpl> get copyWith =>
      __$$PriceListRequestImplCopyWithImpl<_$PriceListRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceListRequestImplToJson(
      this,
    );
  }
}

abstract class _PriceListRequest implements PriceListRequest {
  const factory _PriceListRequest(
      {final String? name,
      final List<DetailPrice>? detailPrices}) = _$PriceListRequestImpl;

  @override
  String? get name;
  @override
  List<DetailPrice>? get detailPrices;
  @override
  @JsonKey(ignore: true)
  _$$PriceListRequestImplCopyWith<_$PriceListRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
