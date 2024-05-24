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
mixin _$GetSaleInvoiceState {
  List<SaleInvoice> get list => throw _privateConstructorUsedError;
  InvoiceQuery get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetSaleInvoiceStateCopyWith<GetSaleInvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSaleInvoiceStateCopyWith<$Res> {
  factory $GetSaleInvoiceStateCopyWith(
          GetSaleInvoiceState value, $Res Function(GetSaleInvoiceState) then) =
      _$GetSaleInvoiceStateCopyWithImpl<$Res, GetSaleInvoiceState>;
  @useResult
  $Res call({List<SaleInvoice> list, InvoiceQuery query});

  $InvoiceQueryCopyWith<$Res> get query;
}

/// @nodoc
class _$GetSaleInvoiceStateCopyWithImpl<$Res, $Val extends GetSaleInvoiceState>
    implements $GetSaleInvoiceStateCopyWith<$Res> {
  _$GetSaleInvoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SaleInvoice>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as InvoiceQuery,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceQueryCopyWith<$Res> get query {
    return $InvoiceQueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $GetSaleInvoiceStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SaleInvoice> list, InvoiceQuery query});

  @override
  $InvoiceQueryCopyWith<$Res> get query;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$GetSaleInvoiceStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? query = null,
  }) {
    return _then(_$StateImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SaleInvoice>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as InvoiceQuery,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {required final List<SaleInvoice> list, required this.query})
      : _list = list;

  final List<SaleInvoice> _list;
  @override
  List<SaleInvoice> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final InvoiceQuery query;

  @override
  String toString() {
    return 'GetSaleInvoiceState(list: $list, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements GetSaleInvoiceState {
  const factory _State(
      {required final List<SaleInvoice> list,
      required final InvoiceQuery query}) = _$StateImpl;

  @override
  List<SaleInvoice> get list;
  @override
  InvoiceQuery get query;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
