// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Credential _$CredentialFromJson(Map<String, dynamic> json) {
  return _Credential.fromJson(json);
}

/// @nodoc
mixin _$Credential {
  String get access_token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialCopyWith<Credential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialCopyWith<$Res> {
  factory $CredentialCopyWith(
          Credential value, $Res Function(Credential) then) =
      _$CredentialCopyWithImpl<$Res>;
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class _$CredentialCopyWithImpl<$Res> implements $CredentialCopyWith<$Res> {
  _$CredentialCopyWithImpl(this._value, this._then);

  final Credential _value;
  // ignore: unused_field
  final $Res Function(Credential) _then;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? refresh_token = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CredentialCopyWith<$Res>
    implements $CredentialCopyWith<$Res> {
  factory _$$_CredentialCopyWith(
          _$_Credential value, $Res Function(_$_Credential) then) =
      __$$_CredentialCopyWithImpl<$Res>;
  @override
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class __$$_CredentialCopyWithImpl<$Res> extends _$CredentialCopyWithImpl<$Res>
    implements _$$_CredentialCopyWith<$Res> {
  __$$_CredentialCopyWithImpl(
      _$_Credential _value, $Res Function(_$_Credential) _then)
      : super(_value, (v) => _then(v as _$_Credential));

  @override
  _$_Credential get _value => super._value as _$_Credential;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? refresh_token = freezed,
  }) {
    return _then(_$_Credential(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_Credential extends _Credential {
  _$_Credential({required this.access_token, required this.refresh_token})
      : super._();

  factory _$_Credential.fromJson(Map<String, dynamic> json) =>
      _$$_CredentialFromJson(json);

  @override
  final String access_token;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'Credential(access_token: $access_token, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Credential &&
            const DeepCollectionEquality()
                .equals(other.access_token, access_token) &&
            const DeepCollectionEquality()
                .equals(other.refresh_token, refresh_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access_token),
      const DeepCollectionEquality().hash(refresh_token));

  @JsonKey(ignore: true)
  @override
  _$$_CredentialCopyWith<_$_Credential> get copyWith =>
      __$$_CredentialCopyWithImpl<_$_Credential>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CredentialToJson(
      this,
    );
  }
}

abstract class _Credential extends Credential {
  factory _Credential(
      {required final String access_token,
      required final String refresh_token}) = _$_Credential;
  _Credential._() : super._();

  factory _Credential.fromJson(Map<String, dynamic> json) =
      _$_Credential.fromJson;

  @override
  String get access_token;
  @override
  String get refresh_token;
  @override
  @JsonKey(ignore: true)
  _$$_CredentialCopyWith<_$_Credential> get copyWith =>
      throw _privateConstructorUsedError;
}
