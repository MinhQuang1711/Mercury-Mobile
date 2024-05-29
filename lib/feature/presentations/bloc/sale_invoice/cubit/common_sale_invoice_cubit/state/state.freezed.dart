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
mixin _$CommonSaleInvoiceState {
  SaleInvoiceRequest get request => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonSaleInvoiceStateCopyWith<CommonSaleInvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonSaleInvoiceStateCopyWith<$Res> {
  factory $CommonSaleInvoiceStateCopyWith(CommonSaleInvoiceState value,
          $Res Function(CommonSaleInvoiceState) then) =
      _$CommonSaleInvoiceStateCopyWithImpl<$Res, CommonSaleInvoiceState>;
  @useResult
  $Res call({SaleInvoiceRequest request});

  $SaleInvoiceRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$CommonSaleInvoiceStateCopyWithImpl<$Res,
        $Val extends CommonSaleInvoiceState>
    implements $CommonSaleInvoiceStateCopyWith<$Res> {
  _$CommonSaleInvoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SaleInvoiceRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SaleInvoiceRequestCopyWith<$Res> get request {
    return $SaleInvoiceRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $CommonSaleInvoiceStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SaleInvoiceRequest request});

  @override
  $SaleInvoiceRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$CommonSaleInvoiceStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$StateImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SaleInvoiceRequest,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(this.request);

  @override
  final SaleInvoiceRequest request;

  @override
  String toString() {
    return 'CommonSaleInvoiceState(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements CommonSaleInvoiceState {
  const factory _State(final SaleInvoiceRequest request) = _$StateImpl;

  @override
  SaleInvoiceRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
