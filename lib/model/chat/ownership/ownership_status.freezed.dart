// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ownership_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OwnershipStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() owned,
    required TResult Function() unowned,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnedStatus value) owned,
    required TResult Function(_UnownedStatus value) unowned,
    required TResult Function(_UnknownStatus value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnershipStatusCopyWith<$Res> {
  factory $OwnershipStatusCopyWith(
          OwnershipStatus value, $Res Function(OwnershipStatus) then) =
      _$OwnershipStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$OwnershipStatusCopyWithImpl<$Res>
    implements $OwnershipStatusCopyWith<$Res> {
  _$OwnershipStatusCopyWithImpl(this._value, this._then);

  final OwnershipStatus _value;
  // ignore: unused_field
  final $Res Function(OwnershipStatus) _then;
}

/// @nodoc
abstract class _$$_OwnedStatusCopyWith<$Res> {
  factory _$$_OwnedStatusCopyWith(
          _$_OwnedStatus value, $Res Function(_$_OwnedStatus) then) =
      __$$_OwnedStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OwnedStatusCopyWithImpl<$Res>
    extends _$OwnershipStatusCopyWithImpl<$Res>
    implements _$$_OwnedStatusCopyWith<$Res> {
  __$$_OwnedStatusCopyWithImpl(
      _$_OwnedStatus _value, $Res Function(_$_OwnedStatus) _then)
      : super(_value, (v) => _then(v as _$_OwnedStatus));

  @override
  _$_OwnedStatus get _value => super._value as _$_OwnedStatus;
}

/// @nodoc

class _$_OwnedStatus implements _OwnedStatus {
  _$_OwnedStatus();

  @override
  String toString() {
    return 'OwnershipStatus.owned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OwnedStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() owned,
    required TResult Function() unowned,
    required TResult Function() unknown,
  }) {
    return owned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
  }) {
    return owned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (owned != null) {
      return owned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnedStatus value) owned,
    required TResult Function(_UnownedStatus value) unowned,
    required TResult Function(_UnknownStatus value) unknown,
  }) {
    return owned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
  }) {
    return owned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
    required TResult orElse(),
  }) {
    if (owned != null) {
      return owned(this);
    }
    return orElse();
  }
}

abstract class _OwnedStatus implements OwnershipStatus {
  factory _OwnedStatus() = _$_OwnedStatus;
}

/// @nodoc
abstract class _$$_UnownedStatusCopyWith<$Res> {
  factory _$$_UnownedStatusCopyWith(
          _$_UnownedStatus value, $Res Function(_$_UnownedStatus) then) =
      __$$_UnownedStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnownedStatusCopyWithImpl<$Res>
    extends _$OwnershipStatusCopyWithImpl<$Res>
    implements _$$_UnownedStatusCopyWith<$Res> {
  __$$_UnownedStatusCopyWithImpl(
      _$_UnownedStatus _value, $Res Function(_$_UnownedStatus) _then)
      : super(_value, (v) => _then(v as _$_UnownedStatus));

  @override
  _$_UnownedStatus get _value => super._value as _$_UnownedStatus;
}

/// @nodoc

class _$_UnownedStatus implements _UnownedStatus {
  _$_UnownedStatus();

  @override
  String toString() {
    return 'OwnershipStatus.unowned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnownedStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() owned,
    required TResult Function() unowned,
    required TResult Function() unknown,
  }) {
    return unowned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
  }) {
    return unowned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unowned != null) {
      return unowned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnedStatus value) owned,
    required TResult Function(_UnownedStatus value) unowned,
    required TResult Function(_UnknownStatus value) unknown,
  }) {
    return unowned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
  }) {
    return unowned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
    required TResult orElse(),
  }) {
    if (unowned != null) {
      return unowned(this);
    }
    return orElse();
  }
}

abstract class _UnownedStatus implements OwnershipStatus {
  factory _UnownedStatus() = _$_UnownedStatus;
}

/// @nodoc
abstract class _$$_UnknownStatusCopyWith<$Res> {
  factory _$$_UnknownStatusCopyWith(
          _$_UnknownStatus value, $Res Function(_$_UnknownStatus) then) =
      __$$_UnknownStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownStatusCopyWithImpl<$Res>
    extends _$OwnershipStatusCopyWithImpl<$Res>
    implements _$$_UnknownStatusCopyWith<$Res> {
  __$$_UnknownStatusCopyWithImpl(
      _$_UnknownStatus _value, $Res Function(_$_UnknownStatus) _then)
      : super(_value, (v) => _then(v as _$_UnknownStatus));

  @override
  _$_UnknownStatus get _value => super._value as _$_UnknownStatus;
}

/// @nodoc

class _$_UnknownStatus implements _UnknownStatus {
  _$_UnknownStatus();

  @override
  String toString() {
    return 'OwnershipStatus.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnknownStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() owned,
    required TResult Function() unowned,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? owned,
    TResult Function()? unowned,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnedStatus value) owned,
    required TResult Function(_UnownedStatus value) unowned,
    required TResult Function(_UnknownStatus value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnedStatus value)? owned,
    TResult Function(_UnownedStatus value)? unowned,
    TResult Function(_UnknownStatus value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownStatus implements OwnershipStatus {
  factory _UnknownStatus() = _$_UnknownStatus;
}
