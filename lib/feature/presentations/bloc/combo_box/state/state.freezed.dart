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
mixin _$ComboBoxState {
  List<ComboBox> get comboBoxes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComboBoxStateCopyWith<ComboBoxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComboBoxStateCopyWith<$Res> {
  factory $ComboBoxStateCopyWith(
          ComboBoxState value, $Res Function(ComboBoxState) then) =
      _$ComboBoxStateCopyWithImpl<$Res, ComboBoxState>;
  @useResult
  $Res call({List<ComboBox> comboBoxes});
}

/// @nodoc
class _$ComboBoxStateCopyWithImpl<$Res, $Val extends ComboBoxState>
    implements $ComboBoxStateCopyWith<$Res> {
  _$ComboBoxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comboBoxes = null,
  }) {
    return _then(_value.copyWith(
      comboBoxes: null == comboBoxes
          ? _value.comboBoxes
          : comboBoxes // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $ComboBoxStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ComboBox> comboBoxes});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$ComboBoxStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comboBoxes = null,
  }) {
    return _then(_$StateImpl(
      comboBoxes: null == comboBoxes
          ? _value._comboBoxes
          : comboBoxes // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl({required final List<ComboBox> comboBoxes})
      : _comboBoxes = comboBoxes;

  final List<ComboBox> _comboBoxes;
  @override
  List<ComboBox> get comboBoxes {
    if (_comboBoxes is EqualUnmodifiableListView) return _comboBoxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comboBoxes);
  }

  @override
  String toString() {
    return 'ComboBoxState(comboBoxes: $comboBoxes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality()
                .equals(other._comboBoxes, _comboBoxes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_comboBoxes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements ComboBoxState {
  const factory _State({required final List<ComboBox> comboBoxes}) =
      _$StateImpl;

  @override
  List<ComboBox> get comboBoxes;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
