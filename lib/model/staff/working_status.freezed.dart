// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'working_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkingStatus _$WorkingStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'active':
      return ActiveStatus.fromJson(json);
    case 'away':
      return AwayStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WorkingStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WorkingStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() active,
    required TResult Function() away,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? active,
    TResult Function()? away,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? active,
    TResult Function()? away,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActiveStatus value) active,
    required TResult Function(AwayStatus value) away,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActiveStatus value)? active,
    TResult Function(AwayStatus value)? away,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActiveStatus value)? active,
    TResult Function(AwayStatus value)? away,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingStatusCopyWith<$Res> {
  factory $WorkingStatusCopyWith(
          WorkingStatus value, $Res Function(WorkingStatus) then) =
      _$WorkingStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkingStatusCopyWithImpl<$Res>
    implements $WorkingStatusCopyWith<$Res> {
  _$WorkingStatusCopyWithImpl(this._value, this._then);

  final WorkingStatus _value;
  // ignore: unused_field
  final $Res Function(WorkingStatus) _then;
}

/// @nodoc
abstract class _$$ActiveStatusCopyWith<$Res> {
  factory _$$ActiveStatusCopyWith(
          _$ActiveStatus value, $Res Function(_$ActiveStatus) then) =
      __$$ActiveStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveStatusCopyWithImpl<$Res>
    extends _$WorkingStatusCopyWithImpl<$Res>
    implements _$$ActiveStatusCopyWith<$Res> {
  __$$ActiveStatusCopyWithImpl(
      _$ActiveStatus _value, $Res Function(_$ActiveStatus) _then)
      : super(_value, (v) => _then(v as _$ActiveStatus));

  @override
  _$ActiveStatus get _value => super._value as _$ActiveStatus;
}

/// @nodoc
@JsonSerializable()
class _$ActiveStatus implements ActiveStatus {
  const _$ActiveStatus({final String? $type}) : $type = $type ?? 'active';

  factory _$ActiveStatus.fromJson(Map<String, dynamic> json) =>
      _$$ActiveStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WorkingStatus.active()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActiveStatus);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() active,
    required TResult Function() away,
  }) {
    return active();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? active,
    TResult Function()? away,
  }) {
    return active?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? active,
    TResult Function()? away,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActiveStatus value) active,
    required TResult Function(AwayStatus value) away,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActiveStatus value)? active,
    TResult Function(AwayStatus value)? away,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActiveStatus value)? active,
    TResult Function(AwayStatus value)? away,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveStatusToJson(
      this,
    );
  }
}

abstract class ActiveStatus implements WorkingStatus {
  const factory ActiveStatus() = _$ActiveStatus;

  factory ActiveStatus.fromJson(Map<String, dynamic> json) =
      _$ActiveStatus.fromJson;
}

/// @nodoc
abstract class _$$AwayStatusCopyWith<$Res> {
  factory _$$AwayStatusCopyWith(
          _$AwayStatus value, $Res Function(_$AwayStatus) then) =
      __$$AwayStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AwayStatusCopyWithImpl<$Res> extends _$WorkingStatusCopyWithImpl<$Res>
    implements _$$AwayStatusCopyWith<$Res> {
  __$$AwayStatusCopyWithImpl(
      _$AwayStatus _value, $Res Function(_$AwayStatus) _then)
      : super(_value, (v) => _then(v as _$AwayStatus));

  @override
  _$AwayStatus get _value => super._value as _$AwayStatus;
}

/// @nodoc
@JsonSerializable()
class _$AwayStatus implements AwayStatus {
  const _$AwayStatus({final String? $type}) : $type = $type ?? 'away';

  factory _$AwayStatus.fromJson(Map<String, dynamic> json) =>
      _$$AwayStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WorkingStatus.away()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AwayStatus);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() active,
    required TResult Function() away,
  }) {
    return away();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? active,
    TResult Function()? away,
  }) {
    return away?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? active,
    TResult Function()? away,
    required TResult orElse(),
  }) {
    if (away != null) {
      return away();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActiveStatus value) active,
    required TResult Function(AwayStatus value) away,
  }) {
    return away(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActiveStatus value)? active,
    TResult Function(AwayStatus value)? away,
  }) {
    return away?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActiveStatus value)? active,
    TResult Function(AwayStatus value)? away,
    required TResult orElse(),
  }) {
    if (away != null) {
      return away(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AwayStatusToJson(
      this,
    );
  }
}

abstract class AwayStatus implements WorkingStatus {
  const factory AwayStatus() = _$AwayStatus;

  factory AwayStatus.fromJson(Map<String, dynamic> json) =
      _$AwayStatus.fromJson;
}
