// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriceList _$PriceListFromJson(Map<String, dynamic> json) {
  return _PriceList.fromJson(json);
}

/// @nodoc
mixin _$PriceList {
  String? get name => throw _privateConstructorUsedError;
  List<DetailPriceList>? get detailPriceList =>
      throw _privateConstructorUsedError;
  DateTime? get createDate => throw _privateConstructorUsedError;
  String? get createdByName => throw _privateConstructorUsedError;
  String? get ownerName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceListCopyWith<PriceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceListCopyWith<$Res> {
  factory $PriceListCopyWith(PriceList value, $Res Function(PriceList) then) =
      _$PriceListCopyWithImpl<$Res, PriceList>;
  @useResult
  $Res call(
      {String? name,
      List<DetailPriceList>? detailPriceList,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id});
}

/// @nodoc
class _$PriceListCopyWithImpl<$Res, $Val extends PriceList>
    implements $PriceListCopyWith<$Res> {
  _$PriceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? detailPriceList = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detailPriceList: freezed == detailPriceList
          ? _value.detailPriceList
          : detailPriceList // ignore: cast_nullable_to_non_nullable
              as List<DetailPriceList>?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceListImplCopyWith<$Res>
    implements $PriceListCopyWith<$Res> {
  factory _$$PriceListImplCopyWith(
          _$PriceListImpl value, $Res Function(_$PriceListImpl) then) =
      __$$PriceListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<DetailPriceList>? detailPriceList,
      DateTime? createDate,
      String? createdByName,
      String? ownerName,
      String? id});
}

/// @nodoc
class __$$PriceListImplCopyWithImpl<$Res>
    extends _$PriceListCopyWithImpl<$Res, _$PriceListImpl>
    implements _$$PriceListImplCopyWith<$Res> {
  __$$PriceListImplCopyWithImpl(
      _$PriceListImpl _value, $Res Function(_$PriceListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? detailPriceList = freezed,
    Object? createDate = freezed,
    Object? createdByName = freezed,
    Object? ownerName = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PriceListImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detailPriceList: freezed == detailPriceList
          ? _value._detailPriceList
          : detailPriceList // ignore: cast_nullable_to_non_nullable
              as List<DetailPriceList>?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$PriceListImpl implements _PriceList {
  const _$PriceListImpl(
      {this.name,
      final List<DetailPriceList>? detailPriceList,
      this.createDate,
      this.createdByName,
      this.ownerName,
      this.id})
      : _detailPriceList = detailPriceList;

  factory _$PriceListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceListImplFromJson(json);

  @override
  final String? name;
  final List<DetailPriceList>? _detailPriceList;
  @override
  List<DetailPriceList>? get detailPriceList {
    final value = _detailPriceList;
    if (value == null) return null;
    if (_detailPriceList is EqualUnmodifiableListView) return _detailPriceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createDate;
  @override
  final String? createdByName;
  @override
  final String? ownerName;
  @override
  final String? id;

  @override
  String toString() {
    return 'PriceList(name: $name, detailPriceList: $detailPriceList, createDate: $createDate, createdByName: $createdByName, ownerName: $ownerName, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceListImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._detailPriceList, _detailPriceList) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_detailPriceList),
      createDate,
      createdByName,
      ownerName,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceListImplCopyWith<_$PriceListImpl> get copyWith =>
      __$$PriceListImplCopyWithImpl<_$PriceListImpl>(this, _$identity);
}

abstract class _PriceList implements PriceList {
  const factory _PriceList(
      {final String? name,
      final List<DetailPriceList>? detailPriceList,
      final DateTime? createDate,
      final String? createdByName,
      final String? ownerName,
      final String? id}) = _$PriceListImpl;

  factory _PriceList.fromJson(Map<String, dynamic> json) =
      _$PriceListImpl.fromJson;

  @override
  String? get name;
  @override
  List<DetailPriceList>? get detailPriceList;
  @override
  DateTime? get createDate;
  @override
  String? get createdByName;
  @override
  String? get ownerName;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$PriceListImplCopyWith<_$PriceListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
