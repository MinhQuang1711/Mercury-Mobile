// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerRequest {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get birthDay => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerRequestCopyWith<CustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRequestCopyWith<$Res> {
  factory $CustomerRequestCopyWith(
          CustomerRequest value, $Res Function(CustomerRequest) then) =
      _$CustomerRequestCopyWithImpl<$Res, CustomerRequest>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      DateTime? birthDay,
      String? phoneNumber,
      String? email});
}

/// @nodoc
class _$CustomerRequestCopyWithImpl<$Res, $Val extends CustomerRequest>
    implements $CustomerRequestCopyWith<$Res> {
  _$CustomerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? birthDay = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerRequestImplCopyWith<$Res>
    implements $CustomerRequestCopyWith<$Res> {
  factory _$$CustomerRequestImplCopyWith(_$CustomerRequestImpl value,
          $Res Function(_$CustomerRequestImpl) then) =
      __$$CustomerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      DateTime? birthDay,
      String? phoneNumber,
      String? email});
}

/// @nodoc
class __$$CustomerRequestImplCopyWithImpl<$Res>
    extends _$CustomerRequestCopyWithImpl<$Res, _$CustomerRequestImpl>
    implements _$$CustomerRequestImplCopyWith<$Res> {
  __$$CustomerRequestImplCopyWithImpl(
      _$CustomerRequestImpl _value, $Res Function(_$CustomerRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? birthDay = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_$CustomerRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$CustomerRequestImpl implements _CustomerRequest {
  const _$CustomerRequestImpl(
      {this.id, this.name, this.birthDay, this.phoneNumber, this.email});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final DateTime? birthDay;
  @override
  final String? phoneNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'CustomerRequest(id: $id, name: $name, birthDay: $birthDay, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, birthDay, phoneNumber, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerRequestImplCopyWith<_$CustomerRequestImpl> get copyWith =>
      __$$CustomerRequestImplCopyWithImpl<_$CustomerRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerRequestImplToJson(
      this,
    );
  }
}

abstract class _CustomerRequest implements CustomerRequest {
  const factory _CustomerRequest(
      {final String? id,
      final String? name,
      final DateTime? birthDay,
      final String? phoneNumber,
      final String? email}) = _$CustomerRequestImpl;

  @override
  String? get id;
  @override
  String? get name;
  @override
  DateTime? get birthDay;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$CustomerRequestImplCopyWith<_$CustomerRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
