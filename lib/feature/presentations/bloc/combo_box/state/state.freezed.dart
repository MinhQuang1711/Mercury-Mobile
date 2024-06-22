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
  List<ComboBox> get users => throw _privateConstructorUsedError;
  List<Voucher> get voucher => throw _privateConstructorUsedError;
  List<ComboBox> get products => throw _privateConstructorUsedError;
  List<ComboBox> get ingredient => throw _privateConstructorUsedError;
  List<ComboBox> get customer => throw _privateConstructorUsedError;

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
  $Res call(
      {List<ComboBox> users,
      List<Voucher> voucher,
      List<ComboBox> products,
      List<ComboBox> ingredient,
      List<ComboBox> customer});
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
    Object? users = null,
    Object? voucher = null,
    Object? products = null,
    Object? ingredient = null,
    Object? customer = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {List<ComboBox> users,
      List<Voucher> voucher,
      List<ComboBox> products,
      List<ComboBox> ingredient,
      List<ComboBox> customer});
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
    Object? users = null,
    Object? voucher = null,
    Object? products = null,
    Object? ingredient = null,
    Object? customer = null,
  }) {
    return _then(_$StateImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
      voucher: null == voucher
          ? _value._voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
      ingredient: null == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
      customer: null == customer
          ? _value._customer
          : customer // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {required final List<ComboBox> users,
      required final List<Voucher> voucher,
      required final List<ComboBox> products,
      required final List<ComboBox> ingredient,
      required final List<ComboBox> customer})
      : _users = users,
        _voucher = voucher,
        _products = products,
        _ingredient = ingredient,
        _customer = customer;

  final List<ComboBox> _users;
  @override
  List<ComboBox> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<Voucher> _voucher;
  @override
  List<Voucher> get voucher {
    if (_voucher is EqualUnmodifiableListView) return _voucher;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voucher);
  }

  final List<ComboBox> _products;
  @override
  List<ComboBox> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ComboBox> _ingredient;
  @override
  List<ComboBox> get ingredient {
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredient);
  }

  final List<ComboBox> _customer;
  @override
  List<ComboBox> get customer {
    if (_customer is EqualUnmodifiableListView) return _customer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customer);
  }

  @override
  String toString() {
    return 'ComboBoxState(users: $users, voucher: $voucher, products: $products, ingredient: $ingredient, customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._voucher, _voucher) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            const DeepCollectionEquality().equals(other._customer, _customer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_voucher),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_ingredient),
      const DeepCollectionEquality().hash(_customer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements ComboBoxState {
  const factory _State(
      {required final List<ComboBox> users,
      required final List<Voucher> voucher,
      required final List<ComboBox> products,
      required final List<ComboBox> ingredient,
      required final List<ComboBox> customer}) = _$StateImpl;

  @override
  List<ComboBox> get users;
  @override
  List<Voucher> get voucher;
  @override
  List<ComboBox> get products;
  @override
  List<ComboBox> get ingredient;
  @override
  List<ComboBox> get customer;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
