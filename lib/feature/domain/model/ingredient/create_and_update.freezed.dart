// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_and_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateAndUpdateIngredient {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAndUpdateIngredientCopyWith<CreateAndUpdateIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAndUpdateIngredientCopyWith<$Res> {
  factory $CreateAndUpdateIngredientCopyWith(CreateAndUpdateIngredient value,
          $Res Function(CreateAndUpdateIngredient) then) =
      _$CreateAndUpdateIngredientCopyWithImpl<$Res, CreateAndUpdateIngredient>;
  @useResult
  $Res call({String? id, String name, double cost, double weight});
}

/// @nodoc
class _$CreateAndUpdateIngredientCopyWithImpl<$Res,
        $Val extends CreateAndUpdateIngredient>
    implements $CreateAndUpdateIngredientCopyWith<$Res> {
  _$CreateAndUpdateIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? cost = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAndUpdateIngredientImplCopyWith<$Res>
    implements $CreateAndUpdateIngredientCopyWith<$Res> {
  factory _$$CreateAndUpdateIngredientImplCopyWith(
          _$CreateAndUpdateIngredientImpl value,
          $Res Function(_$CreateAndUpdateIngredientImpl) then) =
      __$$CreateAndUpdateIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name, double cost, double weight});
}

/// @nodoc
class __$$CreateAndUpdateIngredientImplCopyWithImpl<$Res>
    extends _$CreateAndUpdateIngredientCopyWithImpl<$Res,
        _$CreateAndUpdateIngredientImpl>
    implements _$$CreateAndUpdateIngredientImplCopyWith<$Res> {
  __$$CreateAndUpdateIngredientImplCopyWithImpl(
      _$CreateAndUpdateIngredientImpl _value,
      $Res Function(_$CreateAndUpdateIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? cost = null,
    Object? weight = null,
  }) {
    return _then(_$CreateAndUpdateIngredientImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$CreateAndUpdateIngredientImpl implements _CreateAndUpdateIngredient {
  const _$CreateAndUpdateIngredientImpl(
      {this.id, this.name = "", this.cost = 0, this.weight = 0});

  @override
  final String? id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double cost;
  @override
  @JsonKey()
  final double weight;

  @override
  String toString() {
    return 'CreateAndUpdateIngredient(id: $id, name: $name, cost: $cost, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAndUpdateIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, cost, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAndUpdateIngredientImplCopyWith<_$CreateAndUpdateIngredientImpl>
      get copyWith => __$$CreateAndUpdateIngredientImplCopyWithImpl<
          _$CreateAndUpdateIngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAndUpdateIngredientImplToJson(
      this,
    );
  }
}

abstract class _CreateAndUpdateIngredient implements CreateAndUpdateIngredient {
  const factory _CreateAndUpdateIngredient(
      {final String? id,
      final String name,
      final double cost,
      final double weight}) = _$CreateAndUpdateIngredientImpl;

  @override
  String? get id;
  @override
  String get name;
  @override
  double get cost;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$$CreateAndUpdateIngredientImplCopyWith<_$CreateAndUpdateIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
