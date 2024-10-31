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
mixin _$GetPriceListState {
  SearchByName get dto => throw _privateConstructorUsedError;
  List<PriceList> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPriceListStateCopyWith<GetPriceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPriceListStateCopyWith<$Res> {
  factory $GetPriceListStateCopyWith(
          GetPriceListState value, $Res Function(GetPriceListState) then) =
      _$GetPriceListStateCopyWithImpl<$Res, GetPriceListState>;
  @useResult
  $Res call({SearchByName dto, List<PriceList> list});

  $SearchByNameCopyWith<$Res> get dto;
}

/// @nodoc
class _$GetPriceListStateCopyWithImpl<$Res, $Val extends GetPriceListState>
    implements $GetPriceListStateCopyWith<$Res> {
  _$GetPriceListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as SearchByName,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PriceList>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchByNameCopyWith<$Res> get dto {
    return $SearchByNameCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $GetPriceListStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchByName dto, List<PriceList> list});

  @override
  $SearchByNameCopyWith<$Res> get dto;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$GetPriceListStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
    Object? list = null,
  }) {
    return _then(_$StateImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as SearchByName,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PriceList>,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl({required this.dto, required final List<PriceList> list})
      : _list = list;

  @override
  final SearchByName dto;
  final List<PriceList> _list;
  @override
  List<PriceList> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'GetPriceListState(dto: $dto, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.dto, dto) || other.dto == dto) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dto, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements GetPriceListState {
  const factory _State(
      {required final SearchByName dto,
      required final List<PriceList> list}) = _$StateImpl;

  @override
  SearchByName get dto;
  @override
  List<PriceList> get list;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
