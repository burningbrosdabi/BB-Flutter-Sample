// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_page_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatPageParams _$ChatPageParamsFromJson(Map<String, dynamic> json) {
  return _ChatPageParams.fromJson(json);
}

/// @nodoc
mixin _$ChatPageParams {
  String get id => throw _privateConstructorUsedError;
  String get setting_id => throw _privateConstructorUsedError;
  AcquisitionSource get source => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatPageParamsCopyWith<ChatPageParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageParamsCopyWith<$Res> {
  factory $ChatPageParamsCopyWith(
          ChatPageParams value, $Res Function(ChatPageParams) then) =
      _$ChatPageParamsCopyWithImpl<$Res>;
  $Res call({String id, String setting_id, AcquisitionSource source});
}

/// @nodoc
class _$ChatPageParamsCopyWithImpl<$Res>
    implements $ChatPageParamsCopyWith<$Res> {
  _$ChatPageParamsCopyWithImpl(this._value, this._then);

  final ChatPageParams _value;
  // ignore: unused_field
  final $Res Function(ChatPageParams) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? setting_id = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      setting_id: setting_id == freezed
          ? _value.setting_id
          : setting_id // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as AcquisitionSource,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatPageParamsCopyWith<$Res>
    implements $ChatPageParamsCopyWith<$Res> {
  factory _$$_ChatPageParamsCopyWith(
          _$_ChatPageParams value, $Res Function(_$_ChatPageParams) then) =
      __$$_ChatPageParamsCopyWithImpl<$Res>;
  @override
  $Res call({String id, String setting_id, AcquisitionSource source});
}

/// @nodoc
class __$$_ChatPageParamsCopyWithImpl<$Res>
    extends _$ChatPageParamsCopyWithImpl<$Res>
    implements _$$_ChatPageParamsCopyWith<$Res> {
  __$$_ChatPageParamsCopyWithImpl(
      _$_ChatPageParams _value, $Res Function(_$_ChatPageParams) _then)
      : super(_value, (v) => _then(v as _$_ChatPageParams));

  @override
  _$_ChatPageParams get _value => super._value as _$_ChatPageParams;

  @override
  $Res call({
    Object? id = freezed,
    Object? setting_id = freezed,
    Object? source = freezed,
  }) {
    return _then(_$_ChatPageParams(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      setting_id: setting_id == freezed
          ? _value.setting_id
          : setting_id // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as AcquisitionSource,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_ChatPageParams extends _ChatPageParams {
  _$_ChatPageParams(
      {required this.id, required this.setting_id, required this.source})
      : super._();

  factory _$_ChatPageParams.fromJson(Map<String, dynamic> json) =>
      _$$_ChatPageParamsFromJson(json);

  @override
  final String id;
  @override
  final String setting_id;
  @override
  final AcquisitionSource source;

  @override
  String toString() {
    return 'ChatPageParams(id: $id, setting_id: $setting_id, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatPageParams &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.setting_id, setting_id) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(setting_id),
      const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$_ChatPageParamsCopyWith<_$_ChatPageParams> get copyWith =>
      __$$_ChatPageParamsCopyWithImpl<_$_ChatPageParams>(this, _$identity);
}

abstract class _ChatPageParams extends ChatPageParams {
  factory _ChatPageParams(
      {required final String id,
      required final String setting_id,
      required final AcquisitionSource source}) = _$_ChatPageParams;
  _ChatPageParams._() : super._();

  factory _ChatPageParams.fromJson(Map<String, dynamic> json) =
      _$_ChatPageParams.fromJson;

  @override
  String get id;
  @override
  String get setting_id;
  @override
  AcquisitionSource get source;
  @override
  @JsonKey(ignore: true)
  _$$_ChatPageParamsCopyWith<_$_ChatPageParams> get copyWith =>
      throw _privateConstructorUsedError;
}
