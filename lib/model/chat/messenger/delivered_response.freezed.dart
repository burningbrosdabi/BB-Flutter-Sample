// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivered_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveredResponse _$DeliveredResponseFromJson(Map<String, dynamic> json) {
  return _DeliveredResponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveredResponse {
  String get message_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveredResponseCopyWith<DeliveredResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveredResponseCopyWith<$Res> {
  factory $DeliveredResponseCopyWith(
          DeliveredResponse value, $Res Function(DeliveredResponse) then) =
      _$DeliveredResponseCopyWithImpl<$Res>;
  $Res call({String message_id});
}

/// @nodoc
class _$DeliveredResponseCopyWithImpl<$Res>
    implements $DeliveredResponseCopyWith<$Res> {
  _$DeliveredResponseCopyWithImpl(this._value, this._then);

  final DeliveredResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveredResponse) _then;

  @override
  $Res call({
    Object? message_id = freezed,
  }) {
    return _then(_value.copyWith(
      message_id: message_id == freezed
          ? _value.message_id
          : message_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveredResponseCopyWith<$Res>
    implements $DeliveredResponseCopyWith<$Res> {
  factory _$$_DeliveredResponseCopyWith(_$_DeliveredResponse value,
          $Res Function(_$_DeliveredResponse) then) =
      __$$_DeliveredResponseCopyWithImpl<$Res>;
  @override
  $Res call({String message_id});
}

/// @nodoc
class __$$_DeliveredResponseCopyWithImpl<$Res>
    extends _$DeliveredResponseCopyWithImpl<$Res>
    implements _$$_DeliveredResponseCopyWith<$Res> {
  __$$_DeliveredResponseCopyWithImpl(
      _$_DeliveredResponse _value, $Res Function(_$_DeliveredResponse) _then)
      : super(_value, (v) => _then(v as _$_DeliveredResponse));

  @override
  _$_DeliveredResponse get _value => super._value as _$_DeliveredResponse;

  @override
  $Res call({
    Object? message_id = freezed,
  }) {
    return _then(_$_DeliveredResponse(
      message_id: message_id == freezed
          ? _value.message_id
          : message_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveredResponse implements _DeliveredResponse {
  _$_DeliveredResponse({required this.message_id});

  factory _$_DeliveredResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveredResponseFromJson(json);

  @override
  final String message_id;

  @override
  String toString() {
    return 'DeliveredResponse(message_id: $message_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveredResponse &&
            const DeepCollectionEquality()
                .equals(other.message_id, message_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message_id));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveredResponseCopyWith<_$_DeliveredResponse> get copyWith =>
      __$$_DeliveredResponseCopyWithImpl<_$_DeliveredResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveredResponseToJson(
      this,
    );
  }
}

abstract class _DeliveredResponse implements DeliveredResponse {
  factory _DeliveredResponse({required final String message_id}) =
      _$_DeliveredResponse;

  factory _DeliveredResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveredResponse.fromJson;

  @override
  String get message_id;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveredResponseCopyWith<_$_DeliveredResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
