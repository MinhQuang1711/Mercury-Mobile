// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GlobalState {
  bool get reloadProduct => throw _privateConstructorUsedError;
  bool get reloadDasboard => throw _privateConstructorUsedError;
  bool get reloadSaleInvoice => throw _privateConstructorUsedError;
  bool get reloadImportInvoice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalStateCopyWith<GlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res, GlobalState>;
  @useResult
  $Res call(
      {bool reloadProduct,
      bool reloadDasboard,
      bool reloadSaleInvoice,
      bool reloadImportInvoice});
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res, $Val extends GlobalState>
    implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reloadProduct = null,
    Object? reloadDasboard = null,
    Object? reloadSaleInvoice = null,
    Object? reloadImportInvoice = null,
  }) {
    return _then(_value.copyWith(
      reloadProduct: null == reloadProduct
          ? _value.reloadProduct
          : reloadProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      reloadDasboard: null == reloadDasboard
          ? _value.reloadDasboard
          : reloadDasboard // ignore: cast_nullable_to_non_nullable
              as bool,
      reloadSaleInvoice: null == reloadSaleInvoice
          ? _value.reloadSaleInvoice
          : reloadSaleInvoice // ignore: cast_nullable_to_non_nullable
              as bool,
      reloadImportInvoice: null == reloadImportInvoice
          ? _value.reloadImportInvoice
          : reloadImportInvoice // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $GlobalStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool reloadProduct,
      bool reloadDasboard,
      bool reloadSaleInvoice,
      bool reloadImportInvoice});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reloadProduct = null,
    Object? reloadDasboard = null,
    Object? reloadSaleInvoice = null,
    Object? reloadImportInvoice = null,
  }) {
    return _then(_$StateImpl(
      reloadProduct: null == reloadProduct
          ? _value.reloadProduct
          : reloadProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      reloadDasboard: null == reloadDasboard
          ? _value.reloadDasboard
          : reloadDasboard // ignore: cast_nullable_to_non_nullable
              as bool,
      reloadSaleInvoice: null == reloadSaleInvoice
          ? _value.reloadSaleInvoice
          : reloadSaleInvoice // ignore: cast_nullable_to_non_nullable
              as bool,
      reloadImportInvoice: null == reloadImportInvoice
          ? _value.reloadImportInvoice
          : reloadImportInvoice // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {required this.reloadProduct,
      required this.reloadDasboard,
      required this.reloadSaleInvoice,
      required this.reloadImportInvoice});

  @override
  final bool reloadProduct;
  @override
  final bool reloadDasboard;
  @override
  final bool reloadSaleInvoice;
  @override
  final bool reloadImportInvoice;

  @override
  String toString() {
    return 'GlobalState(reloadProduct: $reloadProduct, reloadDasboard: $reloadDasboard, reloadSaleInvoice: $reloadSaleInvoice, reloadImportInvoice: $reloadImportInvoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.reloadProduct, reloadProduct) ||
                other.reloadProduct == reloadProduct) &&
            (identical(other.reloadDasboard, reloadDasboard) ||
                other.reloadDasboard == reloadDasboard) &&
            (identical(other.reloadSaleInvoice, reloadSaleInvoice) ||
                other.reloadSaleInvoice == reloadSaleInvoice) &&
            (identical(other.reloadImportInvoice, reloadImportInvoice) ||
                other.reloadImportInvoice == reloadImportInvoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reloadProduct, reloadDasboard,
      reloadSaleInvoice, reloadImportInvoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements GlobalState {
  const factory _State(
      {required final bool reloadProduct,
      required final bool reloadDasboard,
      required final bool reloadSaleInvoice,
      required final bool reloadImportInvoice}) = _$StateImpl;

  @override
  bool get reloadProduct;
  @override
  bool get reloadDasboard;
  @override
  bool get reloadSaleInvoice;
  @override
  bool get reloadImportInvoice;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
