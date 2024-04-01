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
mixin _$CreateIngredientState {
  CreateAndUpdateIngredient get dto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateIngredientStateCopyWith<CreateIngredientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateIngredientStateCopyWith<$Res> {
  factory $CreateIngredientStateCopyWith(CreateIngredientState value,
          $Res Function(CreateIngredientState) then) =
      _$CreateIngredientStateCopyWithImpl<$Res, CreateIngredientState>;
  @useResult
  $Res call({CreateAndUpdateIngredient dto});

  $CreateAndUpdateIngredientCopyWith<$Res> get dto;
}

/// @nodoc
class _$CreateIngredientStateCopyWithImpl<$Res,
        $Val extends CreateIngredientState>
    implements $CreateIngredientStateCopyWith<$Res> {
  _$CreateIngredientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_value.copyWith(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateAndUpdateIngredient,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateAndUpdateIngredientCopyWith<$Res> get dto {
    return $CreateAndUpdateIngredientCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $CreateIngredientStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateAndUpdateIngredient dto});

  @override
  $CreateAndUpdateIngredientCopyWith<$Res> get dto;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$CreateIngredientStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$StateImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateAndUpdateIngredient,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl({required this.dto});

  @override
  final CreateAndUpdateIngredient dto;

  @override
  String toString() {
    return 'CreateIngredientState(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements CreateIngredientState {
  const factory _State({required final CreateAndUpdateIngredient dto}) =
      _$StateImpl;

  @override
  CreateAndUpdateIngredient get dto;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
