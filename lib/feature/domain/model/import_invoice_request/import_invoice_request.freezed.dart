// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_invoice_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImportInvoiceRequest {
  String? get description => throw _privateConstructorUsedError;
  List<ComboBox>? get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImportInvoiceRequestCopyWith<ImportInvoiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportInvoiceRequestCopyWith<$Res> {
  factory $ImportInvoiceRequestCopyWith(ImportInvoiceRequest value,
          $Res Function(ImportInvoiceRequest) then) =
      _$ImportInvoiceRequestCopyWithImpl<$Res, ImportInvoiceRequest>;
  @useResult
  $Res call({String? description, List<ComboBox>? ingredients});
}

/// @nodoc
class _$ImportInvoiceRequestCopyWithImpl<$Res,
        $Val extends ImportInvoiceRequest>
    implements $ImportInvoiceRequestCopyWith<$Res> {
  _$ImportInvoiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImportInvoiceRequestImplCopyWith<$Res>
    implements $ImportInvoiceRequestCopyWith<$Res> {
  factory _$$ImportInvoiceRequestImplCopyWith(_$ImportInvoiceRequestImpl value,
          $Res Function(_$ImportInvoiceRequestImpl) then) =
      __$$ImportInvoiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, List<ComboBox>? ingredients});
}

/// @nodoc
class __$$ImportInvoiceRequestImplCopyWithImpl<$Res>
    extends _$ImportInvoiceRequestCopyWithImpl<$Res, _$ImportInvoiceRequestImpl>
    implements _$$ImportInvoiceRequestImplCopyWith<$Res> {
  __$$ImportInvoiceRequestImplCopyWithImpl(_$ImportInvoiceRequestImpl _value,
      $Res Function(_$ImportInvoiceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_$ImportInvoiceRequestImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<ComboBox>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ImportInvoiceRequestImpl implements _ImportInvoiceRequest {
  const _$ImportInvoiceRequestImpl(
      {this.description, final List<ComboBox>? ingredients = const []})
      : _ingredients = ingredients;

  @override
  final String? description;
  final List<ComboBox>? _ingredients;
  @override
  @JsonKey()
  List<ComboBox>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImportInvoiceRequest(description: $description, ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportInvoiceRequestImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportInvoiceRequestImplCopyWith<_$ImportInvoiceRequestImpl>
      get copyWith =>
          __$$ImportInvoiceRequestImplCopyWithImpl<_$ImportInvoiceRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImportInvoiceRequestImplToJson(
      this,
    );
  }
}

abstract class _ImportInvoiceRequest implements ImportInvoiceRequest {
  const factory _ImportInvoiceRequest(
      {final String? description,
      final List<ComboBox>? ingredients}) = _$ImportInvoiceRequestImpl;

  @override
  String? get description;
  @override
  List<ComboBox>? get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$ImportInvoiceRequestImplCopyWith<_$ImportInvoiceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
