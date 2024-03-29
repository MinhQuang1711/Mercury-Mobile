// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_by_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchByName {
  String? get name => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchByNameCopyWith<SearchByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchByNameCopyWith<$Res> {
  factory $SearchByNameCopyWith(
          SearchByName value, $Res Function(SearchByName) then) =
      _$SearchByNameCopyWithImpl<$Res, SearchByName>;
  @useResult
  $Res call({String? name, int pageSize, int pageNumber});
}

/// @nodoc
class _$SearchByNameCopyWithImpl<$Res, $Val extends SearchByName>
    implements $SearchByNameCopyWith<$Res> {
  _$SearchByNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pageSize = null,
    Object? pageNumber = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchByNameImplCopyWith<$Res>
    implements $SearchByNameCopyWith<$Res> {
  factory _$$SearchByNameImplCopyWith(
          _$SearchByNameImpl value, $Res Function(_$SearchByNameImpl) then) =
      __$$SearchByNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int pageSize, int pageNumber});
}

/// @nodoc
class __$$SearchByNameImplCopyWithImpl<$Res>
    extends _$SearchByNameCopyWithImpl<$Res, _$SearchByNameImpl>
    implements _$$SearchByNameImplCopyWith<$Res> {
  __$$SearchByNameImplCopyWithImpl(
      _$SearchByNameImpl _value, $Res Function(_$SearchByNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pageSize = null,
    Object? pageNumber = null,
  }) {
    return _then(_$SearchByNameImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$SearchByNameImpl implements _SearchByName {
  const _$SearchByNameImpl(
      {this.name, this.pageSize = 20, this.pageNumber = 1});

  @override
  final String? name;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int pageNumber;

  @override
  String toString() {
    return 'SearchByName(name: $name, pageSize: $pageSize, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchByNameImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, pageSize, pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchByNameImplCopyWith<_$SearchByNameImpl> get copyWith =>
      __$$SearchByNameImplCopyWithImpl<_$SearchByNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchByNameImplToJson(
      this,
    );
  }
}

abstract class _SearchByName implements SearchByName {
  const factory _SearchByName(
      {final String? name,
      final int pageSize,
      final int pageNumber}) = _$SearchByNameImpl;

  @override
  String? get name;
  @override
  int get pageSize;
  @override
  int get pageNumber;
  @override
  @JsonKey(ignore: true)
  _$$SearchByNameImplCopyWith<_$SearchByNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
