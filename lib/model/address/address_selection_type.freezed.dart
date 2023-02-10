// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_selection_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressSelectionType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ward_id, String precise_address) store,
    required TResult Function() custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int ward_id, String precise_address)? store,
    TResult Function()? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ward_id, String precise_address)? store,
    TResult Function()? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreAddressSelectionType value) store,
    required TResult Function(CustomAddressSelectionType value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreAddressSelectionType value)? store,
    TResult Function(CustomAddressSelectionType value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreAddressSelectionType value)? store,
    TResult Function(CustomAddressSelectionType value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressSelectionTypeCopyWith<$Res> {
  factory $AddressSelectionTypeCopyWith(AddressSelectionType value,
          $Res Function(AddressSelectionType) then) =
      _$AddressSelectionTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressSelectionTypeCopyWithImpl<$Res>
    implements $AddressSelectionTypeCopyWith<$Res> {
  _$AddressSelectionTypeCopyWithImpl(this._value, this._then);

  final AddressSelectionType _value;
  // ignore: unused_field
  final $Res Function(AddressSelectionType) _then;
}

/// @nodoc
abstract class _$$StoreAddressSelectionTypeCopyWith<$Res> {
  factory _$$StoreAddressSelectionTypeCopyWith(
          _$StoreAddressSelectionType value,
          $Res Function(_$StoreAddressSelectionType) then) =
      __$$StoreAddressSelectionTypeCopyWithImpl<$Res>;
  $Res call({int ward_id, String precise_address});
}

/// @nodoc
class __$$StoreAddressSelectionTypeCopyWithImpl<$Res>
    extends _$AddressSelectionTypeCopyWithImpl<$Res>
    implements _$$StoreAddressSelectionTypeCopyWith<$Res> {
  __$$StoreAddressSelectionTypeCopyWithImpl(_$StoreAddressSelectionType _value,
      $Res Function(_$StoreAddressSelectionType) _then)
      : super(_value, (v) => _then(v as _$StoreAddressSelectionType));

  @override
  _$StoreAddressSelectionType get _value =>
      super._value as _$StoreAddressSelectionType;

  @override
  $Res call({
    Object? ward_id = freezed,
    Object? precise_address = freezed,
  }) {
    return _then(_$StoreAddressSelectionType(
      ward_id: ward_id == freezed
          ? _value.ward_id
          : ward_id // ignore: cast_nullable_to_non_nullable
              as int,
      precise_address: precise_address == freezed
          ? _value.precise_address
          : precise_address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreAddressSelectionType implements StoreAddressSelectionType {
  const _$StoreAddressSelectionType(
      {this.ward_id = 11003,
      this.precise_address =
          '05 Phan Kế Bính, Đa Kao, Quận 1, Thành phố Hồ Chí Minh '});

  @override
  @JsonKey()
  final int ward_id;
  @override
  @JsonKey()
  final String precise_address;

  @override
  String toString() {
    return 'AddressSelectionType.store(ward_id: $ward_id, precise_address: $precise_address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreAddressSelectionType &&
            const DeepCollectionEquality().equals(other.ward_id, ward_id) &&
            const DeepCollectionEquality()
                .equals(other.precise_address, precise_address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ward_id),
      const DeepCollectionEquality().hash(precise_address));

  @JsonKey(ignore: true)
  @override
  _$$StoreAddressSelectionTypeCopyWith<_$StoreAddressSelectionType>
      get copyWith => __$$StoreAddressSelectionTypeCopyWithImpl<
          _$StoreAddressSelectionType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ward_id, String precise_address) store,
    required TResult Function() custom,
  }) {
    return store(ward_id, precise_address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int ward_id, String precise_address)? store,
    TResult Function()? custom,
  }) {
    return store?.call(ward_id, precise_address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ward_id, String precise_address)? store,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(ward_id, precise_address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreAddressSelectionType value) store,
    required TResult Function(CustomAddressSelectionType value) custom,
  }) {
    return store(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreAddressSelectionType value)? store,
    TResult Function(CustomAddressSelectionType value)? custom,
  }) {
    return store?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreAddressSelectionType value)? store,
    TResult Function(CustomAddressSelectionType value)? custom,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(this);
    }
    return orElse();
  }
}

abstract class StoreAddressSelectionType implements AddressSelectionType {
  const factory StoreAddressSelectionType(
      {final int ward_id,
      final String precise_address}) = _$StoreAddressSelectionType;

  int get ward_id;
  String get precise_address;
  @JsonKey(ignore: true)
  _$$StoreAddressSelectionTypeCopyWith<_$StoreAddressSelectionType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomAddressSelectionTypeCopyWith<$Res> {
  factory _$$CustomAddressSelectionTypeCopyWith(
          _$CustomAddressSelectionType value,
          $Res Function(_$CustomAddressSelectionType) then) =
      __$$CustomAddressSelectionTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomAddressSelectionTypeCopyWithImpl<$Res>
    extends _$AddressSelectionTypeCopyWithImpl<$Res>
    implements _$$CustomAddressSelectionTypeCopyWith<$Res> {
  __$$CustomAddressSelectionTypeCopyWithImpl(
      _$CustomAddressSelectionType _value,
      $Res Function(_$CustomAddressSelectionType) _then)
      : super(_value, (v) => _then(v as _$CustomAddressSelectionType));

  @override
  _$CustomAddressSelectionType get _value =>
      super._value as _$CustomAddressSelectionType;
}

/// @nodoc

class _$CustomAddressSelectionType implements CustomAddressSelectionType {
  const _$CustomAddressSelectionType();

  @override
  String toString() {
    return 'AddressSelectionType.custom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomAddressSelectionType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ward_id, String precise_address) store,
    required TResult Function() custom,
  }) {
    return custom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int ward_id, String precise_address)? store,
    TResult Function()? custom,
  }) {
    return custom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ward_id, String precise_address)? store,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreAddressSelectionType value) store,
    required TResult Function(CustomAddressSelectionType value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreAddressSelectionType value)? store,
    TResult Function(CustomAddressSelectionType value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreAddressSelectionType value)? store,
    TResult Function(CustomAddressSelectionType value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CustomAddressSelectionType implements AddressSelectionType {
  const factory CustomAddressSelectionType() = _$CustomAddressSelectionType;
}
