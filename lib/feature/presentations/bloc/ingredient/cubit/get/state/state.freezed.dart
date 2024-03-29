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
mixin _$GetIngredientState {
  List<Ingredient> get list => throw _privateConstructorUsedError;
  SearchByName get searchByName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetIngredientStateCopyWith<GetIngredientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetIngredientStateCopyWith<$Res> {
  factory $GetIngredientStateCopyWith(
          GetIngredientState value, $Res Function(GetIngredientState) then) =
      _$GetIngredientStateCopyWithImpl<$Res, GetIngredientState>;
  @useResult
  $Res call({List<Ingredient> list, SearchByName searchByName});

  $SearchByNameCopyWith<$Res> get searchByName;
}

/// @nodoc
class _$GetIngredientStateCopyWithImpl<$Res, $Val extends GetIngredientState>
    implements $GetIngredientStateCopyWith<$Res> {
  _$GetIngredientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? searchByName = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      searchByName: null == searchByName
          ? _value.searchByName
          : searchByName // ignore: cast_nullable_to_non_nullable
              as SearchByName,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchByNameCopyWith<$Res> get searchByName {
    return $SearchByNameCopyWith<$Res>(_value.searchByName, (value) {
      return _then(_value.copyWith(searchByName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $GetIngredientStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ingredient> list, SearchByName searchByName});

  @override
  $SearchByNameCopyWith<$Res> get searchByName;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$GetIngredientStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? searchByName = null,
  }) {
    return _then(_$StateImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      searchByName: null == searchByName
          ? _value.searchByName
          : searchByName // ignore: cast_nullable_to_non_nullable
              as SearchByName,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {required final List<Ingredient> list, required this.searchByName})
      : _list = list;

  final List<Ingredient> _list;
  @override
  List<Ingredient> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final SearchByName searchByName;

  @override
  String toString() {
    return 'GetIngredientState(list: $list, searchByName: $searchByName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.searchByName, searchByName) ||
                other.searchByName == searchByName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), searchByName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements GetIngredientState {
  const factory _State(
      {required final List<Ingredient> list,
      required final SearchByName searchByName}) = _$StateImpl;

  @override
  List<Ingredient> get list;
  @override
  SearchByName get searchByName;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
