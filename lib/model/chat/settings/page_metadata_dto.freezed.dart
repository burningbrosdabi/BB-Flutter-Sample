// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_metadata_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageMetadataDto _$PageMetadataDtoFromJson(Map<String, dynamic> json) {
  return _PageMetadataDto.fromJson(json);
}

/// @nodoc
mixin _$PageMetadataDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_name')
  String get name => throw _privateConstructorUsedError;
  int? get page_id => throw _privateConstructorUsedError;
  int? get ig_page_id => throw _privateConstructorUsedError;
  String? get messenger_token => throw _privateConstructorUsedError;
  String? get ig_messenger_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageMetadataDtoCopyWith<PageMetadataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageMetadataDtoCopyWith<$Res> {
  factory $PageMetadataDtoCopyWith(
          PageMetadataDto value, $Res Function(PageMetadataDto) then) =
      _$PageMetadataDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'app_name') String name,
      int? page_id,
      int? ig_page_id,
      String? messenger_token,
      String? ig_messenger_token});
}

/// @nodoc
class _$PageMetadataDtoCopyWithImpl<$Res>
    implements $PageMetadataDtoCopyWith<$Res> {
  _$PageMetadataDtoCopyWithImpl(this._value, this._then);

  final PageMetadataDto _value;
  // ignore: unused_field
  final $Res Function(PageMetadataDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? page_id = freezed,
    Object? ig_page_id = freezed,
    Object? messenger_token = freezed,
    Object? ig_messenger_token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page_id: page_id == freezed
          ? _value.page_id
          : page_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ig_page_id: ig_page_id == freezed
          ? _value.ig_page_id
          : ig_page_id // ignore: cast_nullable_to_non_nullable
              as int?,
      messenger_token: messenger_token == freezed
          ? _value.messenger_token
          : messenger_token // ignore: cast_nullable_to_non_nullable
              as String?,
      ig_messenger_token: ig_messenger_token == freezed
          ? _value.ig_messenger_token
          : ig_messenger_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PageMetadataDtoCopyWith<$Res>
    implements $PageMetadataDtoCopyWith<$Res> {
  factory _$$_PageMetadataDtoCopyWith(
          _$_PageMetadataDto value, $Res Function(_$_PageMetadataDto) then) =
      __$$_PageMetadataDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'app_name') String name,
      int? page_id,
      int? ig_page_id,
      String? messenger_token,
      String? ig_messenger_token});
}

/// @nodoc
class __$$_PageMetadataDtoCopyWithImpl<$Res>
    extends _$PageMetadataDtoCopyWithImpl<$Res>
    implements _$$_PageMetadataDtoCopyWith<$Res> {
  __$$_PageMetadataDtoCopyWithImpl(
      _$_PageMetadataDto _value, $Res Function(_$_PageMetadataDto) _then)
      : super(_value, (v) => _then(v as _$_PageMetadataDto));

  @override
  _$_PageMetadataDto get _value => super._value as _$_PageMetadataDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? page_id = freezed,
    Object? ig_page_id = freezed,
    Object? messenger_token = freezed,
    Object? ig_messenger_token = freezed,
  }) {
    return _then(_$_PageMetadataDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page_id: page_id == freezed
          ? _value.page_id
          : page_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ig_page_id: ig_page_id == freezed
          ? _value.ig_page_id
          : ig_page_id // ignore: cast_nullable_to_non_nullable
              as int?,
      messenger_token: messenger_token == freezed
          ? _value.messenger_token
          : messenger_token // ignore: cast_nullable_to_non_nullable
              as String?,
      ig_messenger_token: ig_messenger_token == freezed
          ? _value.ig_messenger_token
          : ig_messenger_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_PageMetadataDto extends _PageMetadataDto {
  const _$_PageMetadataDto(
      {required this.id,
      @JsonKey(name: 'app_name') required this.name,
      this.page_id,
      this.ig_page_id,
      this.messenger_token,
      this.ig_messenger_token})
      : super._();

  factory _$_PageMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$$_PageMetadataDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'app_name')
  final String name;
  @override
  final int? page_id;
  @override
  final int? ig_page_id;
  @override
  final String? messenger_token;
  @override
  final String? ig_messenger_token;

  @override
  String toString() {
    return 'PageMetadataDto(id: $id, name: $name, page_id: $page_id, ig_page_id: $ig_page_id, messenger_token: $messenger_token, ig_messenger_token: $ig_messenger_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageMetadataDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.page_id, page_id) &&
            const DeepCollectionEquality()
                .equals(other.ig_page_id, ig_page_id) &&
            const DeepCollectionEquality()
                .equals(other.messenger_token, messenger_token) &&
            const DeepCollectionEquality()
                .equals(other.ig_messenger_token, ig_messenger_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(page_id),
      const DeepCollectionEquality().hash(ig_page_id),
      const DeepCollectionEquality().hash(messenger_token),
      const DeepCollectionEquality().hash(ig_messenger_token));

  @JsonKey(ignore: true)
  @override
  _$$_PageMetadataDtoCopyWith<_$_PageMetadataDto> get copyWith =>
      __$$_PageMetadataDtoCopyWithImpl<_$_PageMetadataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageMetadataDtoToJson(
      this,
    );
  }
}

abstract class _PageMetadataDto extends PageMetadataDto {
  const factory _PageMetadataDto(
      {required final String id,
      @JsonKey(name: 'app_name') required final String name,
      final int? page_id,
      final int? ig_page_id,
      final String? messenger_token,
      final String? ig_messenger_token}) = _$_PageMetadataDto;
  const _PageMetadataDto._() : super._();

  factory _PageMetadataDto.fromJson(Map<String, dynamic> json) =
      _$_PageMetadataDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'app_name')
  String get name;
  @override
  int? get page_id;
  @override
  int? get ig_page_id;
  @override
  String? get messenger_token;
  @override
  String? get ig_messenger_token;
  @override
  @JsonKey(ignore: true)
  _$$_PageMetadataDtoCopyWith<_$_PageMetadataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
